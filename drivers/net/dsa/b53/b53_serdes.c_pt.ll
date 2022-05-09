; ModuleID = '/llk/IR_all_yes/drivers/net/dsa/b53/b53_serdes.c_pt.bc'
source_filename = "../drivers/net/dsa/b53/b53_serdes.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+b53_serdes_config\22, \22a\22\09"
module asm "\09.weak\09__crc_b53_serdes_config\09\09\09\09"
module asm "\09.long\09__crc_b53_serdes_config\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_b53_serdes_config:\09\09\09\09\09"
module asm "\09.asciz \09\22b53_serdes_config\22\09\09\09\09\09"
module asm "__kstrtabns_b53_serdes_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+b53_serdes_an_restart\22, \22a\22\09"
module asm "\09.weak\09__crc_b53_serdes_an_restart\09\09\09\09"
module asm "\09.long\09__crc_b53_serdes_an_restart\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_b53_serdes_an_restart:\09\09\09\09\09"
module asm "\09.asciz \09\22b53_serdes_an_restart\22\09\09\09\09\09"
module asm "__kstrtabns_b53_serdes_an_restart:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+b53_serdes_link_state\22, \22a\22\09"
module asm "\09.weak\09__crc_b53_serdes_link_state\09\09\09\09"
module asm "\09.long\09__crc_b53_serdes_link_state\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_b53_serdes_link_state:\09\09\09\09\09"
module asm "\09.asciz \09\22b53_serdes_link_state\22\09\09\09\09\09"
module asm "__kstrtabns_b53_serdes_link_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+b53_serdes_link_set\22, \22a\22\09"
module asm "\09.weak\09__crc_b53_serdes_link_set\09\09\09\09"
module asm "\09.long\09__crc_b53_serdes_link_set\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_b53_serdes_link_set:\09\09\09\09\09"
module asm "\09.asciz \09\22b53_serdes_link_set\22\09\09\09\09\09"
module asm "__kstrtabns_b53_serdes_link_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+b53_serdes_phylink_validate\22, \22a\22\09"
module asm "\09.weak\09__crc_b53_serdes_phylink_validate\09\09\09\09"
module asm "\09.long\09__crc_b53_serdes_phylink_validate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_b53_serdes_phylink_validate:\09\09\09\09\09"
module asm "\09.asciz \09\22b53_serdes_phylink_validate\22\09\09\09\09\09"
module asm "__kstrtabns_b53_serdes_phylink_validate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+b53_serdes_init\22, \22a\22\09"
module asm "\09.weak\09__crc_b53_serdes_init\09\09\09\09"
module asm "\09.long\09__crc_b53_serdes_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_b53_serdes_init:\09\09\09\09\09"
module asm "\09.asciz \09\22b53_serdes_init\22\09\09\09\09\09"
module asm "__kstrtabns_b53_serdes_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.b53_device = type { ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, ptr, i32, i8, [3 x i8], i8, i8, i8, i32, i8, i16, i32, i16, i32, i8, ptr, i8, ptr, ptr, i8, i32, ptr, i8, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.b53_io_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.phylink_link_state = type { [3 x i32], [3 x i32], i32, i32, i32, i32, i8 }

@__kstrtab_b53_serdes_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_b53_serdes_config = external dso_local constant [0 x i8], align 1
@__ksymtab_b53_serdes_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @b53_serdes_config to i32), ptr @__kstrtab_b53_serdes_config, ptr @__kstrtabns_b53_serdes_config }, section "___ksymtab+b53_serdes_config", align 4
@__kstrtab_b53_serdes_an_restart = external dso_local constant [0 x i8], align 1
@__kstrtabns_b53_serdes_an_restart = external dso_local constant [0 x i8], align 1
@__ksymtab_b53_serdes_an_restart = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @b53_serdes_an_restart to i32), ptr @__kstrtab_b53_serdes_an_restart, ptr @__kstrtabns_b53_serdes_an_restart }, section "___ksymtab+b53_serdes_an_restart", align 4
@__kstrtab_b53_serdes_link_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_b53_serdes_link_state = external dso_local constant [0 x i8], align 1
@__ksymtab_b53_serdes_link_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @b53_serdes_link_state to i32), ptr @__kstrtab_b53_serdes_link_state, ptr @__kstrtabns_b53_serdes_link_state }, section "___ksymtab+b53_serdes_link_state", align 4
@__kstrtab_b53_serdes_link_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_b53_serdes_link_set = external dso_local constant [0 x i8], align 1
@__ksymtab_b53_serdes_link_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @b53_serdes_link_set to i32), ptr @__kstrtab_b53_serdes_link_set, ptr @__kstrtabns_b53_serdes_link_set }, section "___ksymtab+b53_serdes_link_set", align 4
@__kstrtab_b53_serdes_phylink_validate = external dso_local constant [0 x i8], align 1
@__kstrtabns_b53_serdes_phylink_validate = external dso_local constant [0 x i8], align 1
@__ksymtab_b53_serdes_phylink_validate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @b53_serdes_phylink_validate to i32), ptr @__kstrtab_b53_serdes_phylink_validate, ptr @__kstrtabns_b53_serdes_phylink_validate }, section "___ksymtab+b53_serdes_phylink_validate", align 4
@b53_serdes_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 197, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"SerDes not initialized, check settings\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"b53_serdes_init\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/net/dsa/b53/b53_serdes.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@b53_serdes_init._entry_ptr = internal global ptr @b53_serdes_init._entry, section ".printk_index", align 4
@b53_serdes_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 206, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"SerDes lane %d, model: %d, rev %c%d (OUI: 0x%08x)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@b53_serdes_init._entry_ptr.8 = internal global ptr @b53_serdes_init._entry.5, section ".printk_index", align 4
@__kstrtab_b53_serdes_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_b53_serdes_init = external dso_local constant [0 x i8], align 1
@__ksymtab_b53_serdes_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @b53_serdes_init to i32), ptr @__kstrtab_b53_serdes_init, ptr @__kstrtabns_b53_serdes_init }, section "___ksymtab+b53_serdes_init", align 4
@__UNIQUE_ID_author497 = internal constant [58 x i8] c"b53_serdes.author=Florian Fainelli <f.fainelli@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description498 = internal constant [48 x i8] c"b53_serdes.description=B53 Switch SerDes driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file499 = internal constant [47 x i8] c"b53_serdes.file=drivers/net/dsa/b53/b53_serdes\00", section ".modinfo", align 1
@__UNIQUE_ID_license500 = internal constant [32 x i8] c"b53_serdes.license=Dual BSD/GPL\00", section ".modinfo", align 1
@switch.table.b53_serdes_link_state = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 10, i32 100, i32 1000, i32 2500], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 197, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private constant [36 x i8] c"../drivers/net/dsa/b53/b53_serdes.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 201, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [35 x i8] c"switch.table.b53_serdes_link_state\00", align 1
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_author497, ptr @__UNIQUE_ID_description498, ptr @__UNIQUE_ID_file499, ptr @__UNIQUE_ID_license500, ptr @__ksymtab_b53_serdes_an_restart, ptr @__ksymtab_b53_serdes_config, ptr @__ksymtab_b53_serdes_init, ptr @__ksymtab_b53_serdes_link_set, ptr @__ksymtab_b53_serdes_link_state, ptr @__ksymtab_b53_serdes_phylink_validate, ptr @b53_serdes_init._entry, ptr @b53_serdes_init._entry.5, ptr @b53_serdes_init._entry_ptr, ptr @b53_serdes_init._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @switch.table.b53_serdes_link_state], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b53_serdes_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b53_serdes_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.b53_serdes_link_state to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b53_serdes_config(ptr noundef %dev, i32 noundef %port, i32 %mode, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  %value.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %serdes_map_lane.i = getelementptr inbounds %struct.b53_io_ops, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %serdes_map_lane.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serdes_map_lane.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %b53_serdes_map_lane.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

b53_serdes_map_lane.exit:                         ; preds = %entry
  %call.i = tail call zeroext i8 %3(ptr noundef %dev, i32 noundef %port) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i)
  %cmp = icmp eq i8 %call.i, -1
  br i1 %cmp, label %b53_serdes_map_lane.exit.cleanup_crit_edge, label %if.end

b53_serdes_map_lane.exit.cleanup_crit_edge:       ; preds = %b53_serdes_map_lane.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %b53_serdes_map_lane.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @b53_serdes_set_lane(ptr noundef %dev, i8 noundef zeroext %call.i) #4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value.i.i) #4
  %4 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %value.i.i, align 2, !annotation !41
  %reg_mutex.i.i.i = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %reg_mutex.i.i.i, i32 noundef 0) #4
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %write16.i.i.i = getelementptr inbounds %struct.b53_io_ops, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %write16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write16.i.i.i, align 4
  %call.i.i.i = tail call i32 %8(ptr noundef %dev, i8 noundef zeroext 22, i8 noundef zeroext 62, i16 noundef zeroext -32000) #4
  tail call void @mutex_unlock(ptr noundef %reg_mutex.i.i.i) #4
  tail call void @mutex_lock_nested(ptr noundef %reg_mutex.i.i.i, i32 noundef 0) #4
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i, align 4
  %read16.i.i.i = getelementptr inbounds %struct.b53_io_ops, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %read16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read16.i.i.i, align 4
  %call.i5.i.i = call i32 %12(ptr noundef %dev, i8 noundef zeroext 22, i8 noundef zeroext 32, ptr noundef nonnull %value.i.i) #4
  call void @mutex_unlock(ptr noundef %reg_mutex.i.i.i) #4
  %13 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %value.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value.i.i) #4
  %interface = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 2
  %15 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %interface, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %16)
  %cmp3 = icmp eq i32 %16, 21
  %17 = and i16 %14, -2
  %masksel = zext i1 %cmp3 to i16
  %reg.0 = or i16 %17, %masksel
  call fastcc void @b53_serdes_set_lane(ptr noundef %dev, i8 noundef zeroext %call.i) #4
  call void @mutex_lock_nested(ptr noundef %reg_mutex.i.i.i, i32 noundef 0) #4
  %18 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i, align 4
  %write16.i.i.i20 = getelementptr inbounds %struct.b53_io_ops, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %write16.i.i.i20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write16.i.i.i20, align 4
  %call.i.i.i21 = call i32 %21(ptr noundef %dev, i8 noundef zeroext 22, i8 noundef zeroext 62, i16 noundef zeroext -32000) #4
  call void @mutex_unlock(ptr noundef %reg_mutex.i.i.i) #4
  call void @mutex_lock_nested(ptr noundef %reg_mutex.i.i.i, i32 noundef 0) #4
  %22 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i, align 4
  %write16.i5.i.i = getelementptr inbounds %struct.b53_io_ops, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %write16.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write16.i5.i.i, align 4
  %call.i6.i.i = call i32 %25(ptr noundef %dev, i8 noundef zeroext 22, i8 noundef zeroext 32, i16 noundef zeroext %reg.0) #4
  call void @mutex_unlock(ptr noundef %reg_mutex.i.i.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %b53_serdes_map_lane.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b53_serdes_an_restart(ptr noundef %dev, i32 noundef %port) #0 align 64 {
entry:
  %value.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %serdes_map_lane.i = getelementptr inbounds %struct.b53_io_ops, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %serdes_map_lane.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serdes_map_lane.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %b53_serdes_map_lane.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

b53_serdes_map_lane.exit:                         ; preds = %entry
  %call.i = tail call zeroext i8 %3(ptr noundef %dev, i32 noundef %port) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i)
  %cmp = icmp eq i8 %call.i, -1
  br i1 %cmp, label %b53_serdes_map_lane.exit.cleanup_crit_edge, label %if.end

b53_serdes_map_lane.exit.cleanup_crit_edge:       ; preds = %b53_serdes_map_lane.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %b53_serdes_map_lane.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @b53_serdes_set_lane(ptr noundef %dev, i8 noundef zeroext %call.i) #4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value.i.i) #4
  %4 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %value.i.i, align 2, !annotation !41
  %reg_mutex.i.i.i = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %reg_mutex.i.i.i, i32 noundef 0) #4
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %write16.i.i.i = getelementptr inbounds %struct.b53_io_ops, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %write16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write16.i.i.i, align 4
  %call.i.i.i = tail call i32 %8(ptr noundef %dev, i8 noundef zeroext 22, i8 noundef zeroext 62, i16 noundef zeroext -32) #4
  tail call void @mutex_unlock(ptr noundef %reg_mutex.i.i.i) #4
  tail call void @mutex_lock_nested(ptr noundef %reg_mutex.i.i.i, i32 noundef 0) #4
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i, align 4
  %read16.i.i.i = getelementptr inbounds %struct.b53_io_ops, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %read16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read16.i.i.i, align 4
  %call.i5.i.i = call i32 %12(ptr noundef %dev, i8 noundef zeroext 22, i8 noundef zeroext 32, ptr noundef nonnull %value.i.i) #4
  call void @mutex_unlock(ptr noundef %reg_mutex.i.i.i) #4
  %13 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %value.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value.i.i) #4
  %15 = or i16 %14, 512
  call fastcc void @b53_serdes_set_lane(ptr noundef %dev, i8 noundef zeroext %call.i) #4
  call void @mutex_lock_nested(ptr noundef %reg_mutex.i.i.i, i32 noundef 0) #4
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 4
  %write16.i.i.i13 = getelementptr inbounds %struct.b53_io_ops, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %write16.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write16.i.i.i13, align 4
  %call.i.i.i14 = call i32 %19(ptr noundef %dev, i8 noundef zeroext 22, i8 noundef zeroext 62, i16 noundef zeroext -32) #4
  call void @mutex_unlock(ptr noundef %reg_mutex.i.i.i) #4
  call void @mutex_lock_nested(ptr noundef %reg_mutex.i.i.i, i32 noundef 0) #4
  %20 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i, align 4
  %write16.i5.i.i = getelementptr inbounds %struct.b53_io_ops, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %write16.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write16.i5.i.i, align 4
  %call.i6.i.i = call i32 %23(ptr noundef %dev, i8 noundef zeroext 22, i8 noundef zeroext 32, i16 noundef zeroext %15) #4
  call void @mutex_unlock(ptr noundef %reg_mutex.i.i.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %b53_serdes_map_lane.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @b53_serdes_link_state(ptr noundef %dev, i32 noundef %port, ptr nocapture noundef %state) #0 align 64 {
entry:
  %value.i.i60 = alloca i16, align 2
  %value.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %serdes_map_lane.i = getelementptr inbounds %struct.b53_io_ops, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %serdes_map_lane.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serdes_map_lane.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %b53_serdes_map_lane.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

b53_serdes_map_lane.exit:                         ; preds = %entry
  %call.i = tail call zeroext i8 %3(ptr noundef %dev, i32 noundef %port) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i)
  %cmp = icmp eq i8 %call.i, -1
  br i1 %cmp, label %b53_serdes_map_lane.exit.cleanup_crit_edge, label %if.end

b53_serdes_map_lane.exit.cleanup_crit_edge:       ; preds = %b53_serdes_map_lane.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %b53_serdes_map_lane.exit
  tail call fastcc void @b53_serdes_set_lane(ptr noundef %dev, i8 noundef zeroext %call.i) #4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value.i.i) #4
  %4 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %value.i.i, align 2, !annotation !41
  %reg_mutex.i.i.i = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %reg_mutex.i.i.i, i32 noundef 0) #4
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %write16.i.i.i = getelementptr inbounds %struct.b53_io_ops, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %write16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write16.i.i.i, align 4
  %call.i.i.i = tail call i32 %8(ptr noundef %dev, i8 noundef zeroext 22, i8 noundef zeroext 62, i16 noundef zeroext -32000) #4
  tail call void @mutex_unlock(ptr noundef %reg_mutex.i.i.i) #4
  tail call void @mutex_lock_nested(ptr noundef %reg_mutex.i.i.i, i32 noundef 0) #4
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i, align 4
  %read16.i.i.i = getelementptr inbounds %struct.b53_io_ops, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %read16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read16.i.i.i, align 4
  %call.i5.i.i = call i32 %12(ptr noundef %dev, i8 noundef zeroext 22, i8 noundef zeroext 40, ptr noundef nonnull %value.i.i) #4
  call void @mutex_unlock(ptr noundef %reg_mutex.i.i.i) #4
  %13 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %value.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value.i.i) #4
  call fastcc void @b53_serdes_set_lane(ptr noundef %dev, i8 noundef zeroext %call.i) #4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value.i.i60) #4
  %15 = ptrtoint ptr %value.i.i60 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 -1, ptr %value.i.i60, align 2, !annotation !41
  call void @mutex_lock_nested(ptr noundef %reg_mutex.i.i.i, i32 noundef 0) #4
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 4
  %write16.i.i.i63 = getelementptr inbounds %struct.b53_io_ops, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %write16.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write16.i.i.i63, align 4
  %call.i.i.i64 = call i32 %19(ptr noundef %dev, i8 noundef zeroext 22, i8 noundef zeroext 62, i16 noundef zeroext -32) #4
  call void @mutex_unlock(ptr noundef %reg_mutex.i.i.i) #4
  call void @mutex_lock_nested(ptr noundef %reg_mutex.i.i.i, i32 noundef 0) #4
  %20 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i, align 4
  %read16.i.i.i65 = getelementptr inbounds %struct.b53_io_ops, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %read16.i.i.i65 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read16.i.i.i65, align 4
  %call.i5.i.i66 = call i32 %23(ptr noundef %dev, i8 noundef zeroext 22, i8 noundef zeroext 34, ptr noundef nonnull %value.i.i60) #4
  call void @mutex_unlock(ptr noundef %reg_mutex.i.i.i) #4
  %24 = ptrtoint ptr %value.i.i60 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %value.i.i60, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value.i.i60) #4
  %conv4 = zext i16 %14 to i32
  %26 = lshr i32 %conv4, 3
  %and = and i32 %26, 3
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.b53_serdes_link_state, i32 0, i32 %and
  %27 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %27)
  %switch.load = load i32, ptr %switch.gep, align 4
  %speed10 = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 3
  %28 = ptrtoint ptr %speed10 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %switch.load, ptr %speed10, align 4
  %and12 = lshr i32 %conv4, 2
  %and12.lobit = and i32 %and12, 1
  %duplex = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 4
  %29 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %and12.lobit, ptr %duplex, align 4
  %an_complete = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 6
  %30 = trunc i16 %25 to i8
  %31 = and i8 %30, 32
  %32 = ptrtoint ptr %an_complete to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load = load i8, ptr %an_complete, align 4
  %bf.clear = and i8 %bf.load, 95
  %33 = trunc i16 %14 to i8
  %34 = shl i8 %33, 6
  %bf.shl26 = and i8 %34, -128
  %bf.set = or i8 %31, %bf.shl26
  %bf.set28 = or i8 %bf.set, %bf.clear
  store i8 %bf.set28, ptr %an_complete, align 4
  %and31 = and i32 %conv4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end.if.end34_crit_edge, label %if.then33

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34

if.then33:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %pause = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 5
  %35 = ptrtoint ptr %pause to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pause, align 4
  %or = or i32 %36, 1
  store i32 %or, ptr %pause, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end.if.end34_crit_edge
  %and36 = and i32 %conv4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end34.cleanup_crit_edge, label %if.then38

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  %pause39 = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 5
  %37 = ptrtoint ptr %pause39 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pause39, align 4
  %or40 = or i32 %38, 2
  store i32 %or40, ptr %pause39, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %if.end34.cleanup_crit_edge, %b53_serdes_map_lane.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %b53_serdes_map_lane.exit.cleanup_crit_edge ], [ 0, %if.then38 ], [ 0, %if.end34.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b53_serdes_link_set(ptr noundef %dev, i32 noundef %port, i32 %mode, i32 %interface, i1 noundef zeroext %link_up) #0 align 64 {
entry:
  %value.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %serdes_map_lane.i = getelementptr inbounds %struct.b53_io_ops, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %serdes_map_lane.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serdes_map_lane.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %b53_serdes_map_lane.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

b53_serdes_map_lane.exit:                         ; preds = %entry
  %call.i = tail call zeroext i8 %3(ptr noundef %dev, i32 noundef %port) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i)
  %cmp = icmp eq i8 %call.i, -1
  br i1 %cmp, label %b53_serdes_map_lane.exit.cleanup_crit_edge, label %if.end

b53_serdes_map_lane.exit.cleanup_crit_edge:       ; preds = %b53_serdes_map_lane.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %b53_serdes_map_lane.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @b53_serdes_set_lane(ptr noundef %dev, i8 noundef zeroext %call.i) #4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value.i.i) #4
  %4 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %value.i.i, align 2, !annotation !41
  %reg_mutex.i.i.i = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %reg_mutex.i.i.i, i32 noundef 0) #4
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %write16.i.i.i = getelementptr inbounds %struct.b53_io_ops, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %write16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write16.i.i.i, align 4
  %call.i.i.i = tail call i32 %8(ptr noundef %dev, i8 noundef zeroext 22, i8 noundef zeroext 62, i16 noundef zeroext -32) #4
  tail call void @mutex_unlock(ptr noundef %reg_mutex.i.i.i) #4
  tail call void @mutex_lock_nested(ptr noundef %reg_mutex.i.i.i, i32 noundef 0) #4
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i, align 4
  %read16.i.i.i = getelementptr inbounds %struct.b53_io_ops, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %read16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read16.i.i.i, align 4
  %call.i5.i.i = call i32 %12(ptr noundef %dev, i8 noundef zeroext 22, i8 noundef zeroext 32, ptr noundef nonnull %value.i.i) #4
  call void @mutex_unlock(ptr noundef %reg_mutex.i.i.i) #4
  %13 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %value.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value.i.i) #4
  %15 = and i16 %14, -2049
  %masksel = select i1 %link_up, i16 0, i16 2048
  %reg.0 = or i16 %15, %masksel
  call fastcc void @b53_serdes_set_lane(ptr noundef %dev, i8 noundef zeroext %call.i) #4
  call void @mutex_lock_nested(ptr noundef %reg_mutex.i.i.i, i32 noundef 0) #4
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 4
  %write16.i.i.i18 = getelementptr inbounds %struct.b53_io_ops, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %write16.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write16.i.i.i18, align 4
  %call.i.i.i19 = call i32 %19(ptr noundef %dev, i8 noundef zeroext 22, i8 noundef zeroext 62, i16 noundef zeroext -32) #4
  call void @mutex_unlock(ptr noundef %reg_mutex.i.i.i) #4
  call void @mutex_lock_nested(ptr noundef %reg_mutex.i.i.i, i32 noundef 0) #4
  %20 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i, align 4
  %write16.i5.i.i = getelementptr inbounds %struct.b53_io_ops, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %write16.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write16.i5.i.i, align 4
  %call.i6.i.i = call i32 %23(ptr noundef %dev, i8 noundef zeroext 22, i8 noundef zeroext 32, i16 noundef zeroext %reg.0) #4
  call void @mutex_unlock(ptr noundef %reg_mutex.i.i.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %b53_serdes_map_lane.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b53_serdes_phylink_validate(ptr noundef %dev, i32 noundef %port, ptr nocapture noundef %supported, ptr nocapture readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %serdes_map_lane.i = getelementptr inbounds %struct.b53_io_ops, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %serdes_map_lane.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serdes_map_lane.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %b53_serdes_map_lane.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

b53_serdes_map_lane.exit:                         ; preds = %entry
  %call.i = tail call zeroext i8 %3(ptr noundef %dev, i32 noundef %port) #4
  %4 = zext i8 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %call.i, label %b53_serdes_map_lane.exit.cleanup_crit_edge [
    i8 1, label %b53_serdes_map_lane.exit.sw.bb3_crit_edge
    i8 0, label %sw.bb
  ]

b53_serdes_map_lane.exit.sw.bb3_crit_edge:        ; preds = %b53_serdes_map_lane.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb3

b53_serdes_map_lane.exit.cleanup_crit_edge:       ; preds = %b53_serdes_map_lane.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %b53_serdes_map_lane.exit
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %supported to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %supported, align 4
  %or.i = or i32 %6, 32768
  store i32 %or.i, ptr %supported, align 4
  br label %sw.bb3

sw.bb3:                                           ; preds = %sw.bb, %b53_serdes_map_lane.exit.sw.bb3_crit_edge
  %add.ptr.i = getelementptr i32, ptr %supported, i32 1
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i, align 4
  %or.i6 = or i32 %8, 512
  store i32 %or.i6, ptr %add.ptr.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb3, %b53_serdes_map_lane.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @b53_serdes_init(ptr noundef %dev, i32 noundef %port) #0 align 64 {
entry:
  %value.i.i49 = alloca i16, align 2
  %value.i.i42 = alloca i16, align 2
  %value.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %serdes_map_lane.i = getelementptr inbounds %struct.b53_io_ops, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %serdes_map_lane.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serdes_map_lane.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %b53_serdes_map_lane.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

b53_serdes_map_lane.exit:                         ; preds = %entry
  %call.i = tail call zeroext i8 %3(ptr noundef %dev, i32 noundef %port) #4
  %conv = zext i8 %call.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i)
  %cmp = icmp eq i8 %call.i, -1
  br i1 %cmp, label %b53_serdes_map_lane.exit.cleanup_crit_edge, label %if.end

b53_serdes_map_lane.exit.cleanup_crit_edge:       ; preds = %b53_serdes_map_lane.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %b53_serdes_map_lane.exit
  tail call fastcc void @b53_serdes_set_lane(ptr noundef %dev, i8 noundef zeroext %call.i) #4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value.i.i) #4
  %4 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %value.i.i, align 2, !annotation !41
  %reg_mutex.i.i.i = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %reg_mutex.i.i.i, i32 noundef 0) #4
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %write16.i.i.i = getelementptr inbounds %struct.b53_io_ops, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %write16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write16.i.i.i, align 4
  %call.i.i.i = tail call i32 %8(ptr noundef %dev, i8 noundef zeroext 22, i8 noundef zeroext 62, i16 noundef zeroext -31984) #4
  tail call void @mutex_unlock(ptr noundef %reg_mutex.i.i.i) #4
  tail call void @mutex_lock_nested(ptr noundef %reg_mutex.i.i.i, i32 noundef 0) #4
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i, align 4
  %read16.i.i.i = getelementptr inbounds %struct.b53_io_ops, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %read16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read16.i.i.i, align 4
  %call.i5.i.i = call i32 %12(ptr noundef %dev, i8 noundef zeroext 22, i8 noundef zeroext 32, ptr noundef nonnull %value.i.i) #4
  call void @mutex_unlock(ptr noundef %reg_mutex.i.i.i) #4
  %13 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %value.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value.i.i) #4
  call fastcc void @b53_serdes_set_lane(ptr noundef %dev, i8 noundef zeroext %call.i) #4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value.i.i42) #4
  %15 = ptrtoint ptr %value.i.i42 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 -1, ptr %value.i.i42, align 2, !annotation !41
  call void @mutex_lock_nested(ptr noundef %reg_mutex.i.i.i, i32 noundef 0) #4
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 4
  %write16.i.i.i45 = getelementptr inbounds %struct.b53_io_ops, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %write16.i.i.i45 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write16.i.i.i45, align 4
  %call.i.i.i46 = call i32 %19(ptr noundef %dev, i8 noundef zeroext 22, i8 noundef zeroext 62, i16 noundef zeroext -32) #4
  call void @mutex_unlock(ptr noundef %reg_mutex.i.i.i) #4
  call void @mutex_lock_nested(ptr noundef %reg_mutex.i.i.i, i32 noundef 0) #4
  %20 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i, align 4
  %read16.i.i.i47 = getelementptr inbounds %struct.b53_io_ops, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %read16.i.i.i47 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read16.i.i.i47, align 4
  %call.i5.i.i48 = call i32 %23(ptr noundef %dev, i8 noundef zeroext 22, i8 noundef zeroext 36, ptr noundef nonnull %value.i.i42) #4
  call void @mutex_unlock(ptr noundef %reg_mutex.i.i.i) #4
  %24 = ptrtoint ptr %value.i.i42 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %value.i.i42, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value.i.i42) #4
  call fastcc void @b53_serdes_set_lane(ptr noundef %dev, i8 noundef zeroext %call.i) #4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value.i.i49) #4
  %26 = ptrtoint ptr %value.i.i49 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 -1, ptr %value.i.i49, align 2, !annotation !41
  call void @mutex_lock_nested(ptr noundef %reg_mutex.i.i.i, i32 noundef 0) #4
  %27 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops.i, align 4
  %write16.i.i.i52 = getelementptr inbounds %struct.b53_io_ops, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %write16.i.i.i52 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write16.i.i.i52, align 4
  %call.i.i.i53 = call i32 %30(ptr noundef %dev, i8 noundef zeroext 22, i8 noundef zeroext 62, i16 noundef zeroext -32) #4
  call void @mutex_unlock(ptr noundef %reg_mutex.i.i.i) #4
  call void @mutex_lock_nested(ptr noundef %reg_mutex.i.i.i, i32 noundef 0) #4
  %31 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops.i, align 4
  %read16.i.i.i54 = getelementptr inbounds %struct.b53_io_ops, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %read16.i.i.i54 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %read16.i.i.i54, align 4
  %call.i5.i.i55 = call i32 %34(ptr noundef %dev, i8 noundef zeroext 22, i8 noundef zeroext 38, ptr noundef nonnull %value.i.i49) #4
  call void @mutex_unlock(ptr noundef %reg_mutex.i.i.i) #4
  %35 = ptrtoint ptr %value.i.i49 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %value.i.i49, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value.i.i49) #4
  %37 = zext i16 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.9)
  switch i16 %14, label %do.end16 [
    i16 0, label %if.end.do.end_crit_edge
    i16 -1, label %if.end.do.end_crit_edge59
  ]

if.end.do.end_crit_edge59:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %if.end.do.end_crit_edge, %if.end.do.end_crit_edge59
  %dev12 = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 20
  %38 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev12, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str) #7
  br label %cleanup

do.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %conv5 = zext i16 %14 to i32
  %dev17 = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 20
  %40 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev17, align 4
  %and = and i32 %conv5, 63
  %42 = lshr i32 %conv5, 14
  %add = add nuw nsw i32 %42, 65
  %43 = lshr i32 %conv5, 11
  %and23 = and i32 %43, 7
  %conv24 = zext i16 %25 to i32
  %shl = shl nuw i32 %conv24, 16
  %conv25 = zext i16 %36 to i32
  %or = or i32 %shl, %conv25
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %41, ptr noundef nonnull @.str.6, i32 noundef %conv, i32 noundef %and, i32 noundef %add, i32 noundef %and23, i32 noundef %or) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end16, %do.end, %b53_serdes_map_lane.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %do.end16 ], [ -22, %b53_serdes_map_lane.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @b53_serdes_set_lane(ptr noundef %dev, i8 noundef zeroext %lane) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %serdes_lane = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 21
  %0 = ptrtoint ptr %serdes_lane to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %serdes_lane, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %lane)
  %cmp = icmp eq i8 %1, %lane
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %lane)
  %cmp4 = icmp ugt i8 %lane, 1
  br i1 %cmp4, label %do.end, label %if.end.if.end19_crit_edge, !prof !42

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 42, i32 noundef 9, ptr noundef null) #4
  br label %if.end19

if.end19:                                         ; preds = %do.end, %if.end.if.end19_crit_edge
  %conv26 = zext i8 %lane to i16
  %reg_mutex.i.i = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %reg_mutex.i.i, i32 noundef 0) #4
  %ops.i.i = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 6
  %2 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i.i, align 4
  %write16.i.i = getelementptr inbounds %struct.b53_io_ops, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write16.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %dev, i8 noundef zeroext 22, i8 noundef zeroext 62, i16 noundef zeroext -48) #4
  tail call void @mutex_unlock(ptr noundef %reg_mutex.i.i) #4
  tail call void @mutex_lock_nested(ptr noundef %reg_mutex.i.i, i32 noundef 0) #4
  %6 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i.i, align 4
  %write16.i5.i = getelementptr inbounds %struct.b53_io_ops, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %write16.i5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write16.i5.i, align 4
  %call.i6.i = tail call i32 %9(ptr noundef %dev, i8 noundef zeroext 22, i8 noundef zeroext 60, i16 noundef zeroext %conv26) #4
  tail call void @mutex_unlock(ptr noundef %reg_mutex.i.i) #4
  %10 = ptrtoint ptr %serdes_lane to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %lane, ptr %serdes_lane, align 4
  br label %return

return:                                           ; preds = %if.end19, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !23, !25, !27, !29, !31}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @__ksymtab_b53_serdes_config, !1, !"__ksymtab_b53_serdes_config", i1 false, i1 false}
!1 = !{!"../drivers/net/dsa/b53/b53_serdes.c", i32 81, i32 1}
!2 = !{ptr @__ksymtab_b53_serdes_an_restart, !3, !"__ksymtab_b53_serdes_an_restart", i1 false, i1 false}
!3 = !{!"../drivers/net/dsa/b53/b53_serdes.c", i32 97, i32 1}
!4 = !{ptr @__ksymtab_b53_serdes_link_state, !5, !"__ksymtab_b53_serdes_link_state", i1 false, i1 false}
!5 = !{!"../drivers/net/dsa/b53/b53_serdes.c", i32 139, i32 1}
!6 = !{ptr @__ksymtab_b53_serdes_link_set, !7, !"__ksymtab_b53_serdes_link_set", i1 false, i1 false}
!7 = !{!"../drivers/net/dsa/b53/b53_serdes.c", i32 159, i32 1}
!8 = !{ptr @__ksymtab_b53_serdes_phylink_validate, !9, !"__ksymtab_b53_serdes_phylink_validate", i1 false, i1 false}
!9 = !{!"../drivers/net/dsa/b53/b53_serdes.c", i32 181, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/dsa/b53/b53_serdes.c", i32 197, i32 3}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @b53_serdes_init._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @b53_serdes_init._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/dsa/b53/b53_serdes.c", i32 201, i32 2}
!20 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @b53_serdes_init._entry.5, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @b53_serdes_init._entry_ptr.8, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @__ksymtab_b53_serdes_init, !24, !"__ksymtab_b53_serdes_init", i1 false, i1 false}
!24 = !{!"../drivers/net/dsa/b53/b53_serdes.c", i32 210, i32 1}
!25 = !{ptr @__UNIQUE_ID_author497, !26, !"__UNIQUE_ID_author497", i1 false, i1 false}
!26 = !{!"../drivers/net/dsa/b53/b53_serdes.c", i32 212, i32 1}
!27 = !{ptr @__UNIQUE_ID_description498, !28, !"__UNIQUE_ID_description498", i1 false, i1 false}
!28 = !{!"../drivers/net/dsa/b53/b53_serdes.c", i32 213, i32 1}
!29 = !{ptr @__UNIQUE_ID_file499, !30, !"__UNIQUE_ID_file499", i1 false, i1 false}
!30 = !{!"../drivers/net/dsa/b53/b53_serdes.c", i32 214, i32 1}
!31 = !{ptr @__UNIQUE_ID_license500, !30, !"__UNIQUE_ID_license500", i1 false, i1 false}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{!"auto-init"}
!42 = !{!"branch_weights", i32 1, i32 2000}
