; ModuleID = '/llk/IR_all_yes/sound/i2c/i2c.c_pt.bc'
source_filename = "../sound/i2c/i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+snd_i2c_bus_create\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_i2c_bus_create\09\09\09\09"
module asm "\09.long\09__crc_snd_i2c_bus_create\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_i2c_bus_create:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_i2c_bus_create\22\09\09\09\09\09"
module asm "__kstrtabns_snd_i2c_bus_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_i2c_device_create\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_i2c_device_create\09\09\09\09"
module asm "\09.long\09__crc_snd_i2c_device_create\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_i2c_device_create:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_i2c_device_create\22\09\09\09\09\09"
module asm "__kstrtabns_snd_i2c_device_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_i2c_device_free\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_i2c_device_free\09\09\09\09"
module asm "\09.long\09__crc_snd_i2c_device_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_i2c_device_free:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_i2c_device_free\22\09\09\09\09\09"
module asm "__kstrtabns_snd_i2c_device_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_i2c_sendbytes\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_i2c_sendbytes\09\09\09\09"
module asm "\09.long\09__crc_snd_i2c_sendbytes\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_i2c_sendbytes:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_i2c_sendbytes\22\09\09\09\09\09"
module asm "__kstrtabns_snd_i2c_sendbytes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_i2c_readbytes\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_i2c_readbytes\09\09\09\09"
module asm "\09.long\09__crc_snd_i2c_readbytes\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_i2c_readbytes:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_i2c_readbytes\22\09\09\09\09\09"
module asm "__kstrtabns_snd_i2c_readbytes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_i2c_probeaddr\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_i2c_probeaddr\09\09\09\09"
module asm "\09.long\09__crc_snd_i2c_probeaddr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_i2c_probeaddr:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_i2c_probeaddr\22\09\09\09\09\09"
module asm "__kstrtabns_snd_i2c_probeaddr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.snd_device_ops = type { ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_i2c_ops = type { ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_i2c_bus = type { ptr, [32 x i8], %struct.mutex, ptr, %struct.list_head, %struct.list_head, %union.anon.43, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.43 = type { ptr }
%struct.snd_device = type { %struct.list_head, ptr, i32, i32, ptr, ptr }
%struct.snd_i2c_device = type { %struct.list_head, ptr, [32 x i8], i16, i16, i32, ptr, ptr }
%struct.snd_i2c_bit_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID_author185 = internal constant [48 x i8] c"snd_i2c.author=Jaroslav Kysela <perex@perex.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description186 = internal constant [51 x i8] c"snd_i2c.description=Generic i2c interface for ALSA\00", section ".modinfo", align 1
@__UNIQUE_ID_file187 = internal constant [31 x i8] c"snd_i2c.file=sound/i2c/snd-i2c\00", section ".modinfo", align 1
@__UNIQUE_ID_license188 = internal constant [20 x i8] c"snd_i2c.license=GPL\00", section ".modinfo", align 1
@snd_i2c_bus_create.ops = internal constant { %struct.snd_device_ops, [20 x i8] } { %struct.snd_device_ops { ptr @snd_i2c_bus_dev_free, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@snd_i2c_bus_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&bus->lock_mutex\00", [47 x i8] zeroinitializer }, align 32
@snd_i2c_bit_ops = internal constant { %struct.snd_i2c_ops, [20 x i8] } { %struct.snd_i2c_ops { ptr @snd_i2c_bit_sendbytes, ptr @snd_i2c_bit_readbytes, ptr @snd_i2c_bit_probeaddr }, [20 x i8] zeroinitializer }, align 32
@__kstrtab_snd_i2c_bus_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_i2c_bus_create = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_i2c_bus_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_i2c_bus_create to i32), ptr @__kstrtab_snd_i2c_bus_create, ptr @__kstrtabns_snd_i2c_bus_create }, section "___ksymtab+snd_i2c_bus_create", align 4
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sound/i2c/i2c.c\00", [16 x i8] zeroinitializer }, align 32
@__kstrtab_snd_i2c_device_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_i2c_device_create = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_i2c_device_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_i2c_device_create to i32), ptr @__kstrtab_snd_i2c_device_create, ptr @__kstrtabns_snd_i2c_device_create }, section "___ksymtab+snd_i2c_device_create", align 4
@__kstrtab_snd_i2c_device_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_i2c_device_free = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_i2c_device_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_i2c_device_free to i32), ptr @__kstrtab_snd_i2c_device_free, ptr @__kstrtabns_snd_i2c_device_free }, section "___ksymtab+snd_i2c_device_free", align 4
@__kstrtab_snd_i2c_sendbytes = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_i2c_sendbytes = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_i2c_sendbytes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_i2c_sendbytes to i32), ptr @__kstrtab_snd_i2c_sendbytes, ptr @__kstrtabns_snd_i2c_sendbytes }, section "___ksymtab+snd_i2c_sendbytes", align 4
@__kstrtab_snd_i2c_readbytes = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_i2c_readbytes = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_i2c_readbytes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_i2c_readbytes to i32), ptr @__kstrtab_snd_i2c_readbytes, ptr @__kstrtabns_snd_i2c_readbytes }, section "___ksymtab+snd_i2c_readbytes", align 4
@__kstrtab_snd_i2c_probeaddr = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_i2c_probeaddr = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_i2c_probeaddr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_i2c_probeaddr to i32), ptr @__kstrtab_snd_i2c_probeaddr, ptr @__kstrtabns_snd_i2c_probeaddr }, section "___ksymtab+snd_i2c_probeaddr", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.2 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 70, i32 37 }
@___asan_gen_.5 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 78, i32 2 }
@___asan_gen_.11 = private unnamed_addr constant [16 x i8] c"snd_i2c_bit_ops\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 28, i32 33 }
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.15 = private constant [19 x i8] c"../sound/i2c/i2c.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 105, i32 6 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_author185, ptr @__UNIQUE_ID_description186, ptr @__UNIQUE_ID_file187, ptr @__UNIQUE_ID_license188, ptr @__ksymtab_snd_i2c_bus_create, ptr @__ksymtab_snd_i2c_device_create, ptr @__ksymtab_snd_i2c_device_free, ptr @__ksymtab_snd_i2c_probeaddr, ptr @__ksymtab_snd_i2c_readbytes, ptr @__ksymtab_snd_i2c_sendbytes, ptr @snd_i2c_bus_create.ops, ptr @snd_i2c_bus_create.__key, ptr @.str, ptr @snd_i2c_bit_ops, ptr @.str.1], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_i2c_bus_create.ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_i2c_bus_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_i2c_bit_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_i2c_bus_create(ptr noundef %card, ptr noundef %name, ptr noundef %master, ptr nocapture noundef writeonly %ri2c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ri2c to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %ri2c, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 168) #6
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock_mutex = getelementptr inbounds %struct.snd_i2c_bus, ptr %call7.i.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock_mutex, ptr noundef nonnull @.str, ptr noundef nonnull @snd_i2c_bus_create.__key) #3
  %devices = getelementptr inbounds %struct.snd_i2c_bus, ptr %call7.i.i, i32 0, i32 5
  %2 = ptrtoint ptr %devices to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %devices, ptr %devices, align 4
  %prev.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %call7.i.i, i32 0, i32 5, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %devices, ptr %prev.i, align 8
  %buses = getelementptr inbounds %struct.snd_i2c_bus, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %buses to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %buses, ptr %buses, align 4
  %prev.i31 = getelementptr inbounds %struct.snd_i2c_bus, ptr %call7.i.i, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %prev.i31 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %buses, ptr %prev.i31, align 8
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %card, ptr %call7.i.i, align 8
  %ops = getelementptr inbounds %struct.snd_i2c_bus, ptr %call7.i.i, i32 0, i32 7
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @snd_i2c_bit_ops, ptr %ops, align 8
  %tobool.not = icmp eq ptr %master, null
  br i1 %tobool.not, label %do.body.if.end6_crit_edge, label %if.then2

do.body.if.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6

if.then2:                                         ; preds = %do.body
  %buses4 = getelementptr inbounds %struct.snd_i2c_bus, ptr %master, i32 0, i32 4
  %prev.i32 = getelementptr inbounds %struct.snd_i2c_bus, ptr %master, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %prev.i32 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i32, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %buses, ptr noundef %9, ptr noundef %buses4) #3
  br i1 %call.i.i, label %if.end.i.i, label %if.then2.list_add_tail.exit_crit_edge

if.then2.list_add_tail.exit_crit_edge:            ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #5
  %10 = ptrtoint ptr %prev.i32 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %buses, ptr %prev.i32, align 4
  %11 = ptrtoint ptr %buses to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %buses4, ptr %buses, align 4
  %12 = ptrtoint ptr %prev.i31 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev.i31, align 8
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %buses, ptr %9, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then2.list_add_tail.exit_crit_edge
  %master5 = getelementptr inbounds %struct.snd_i2c_bus, ptr %call7.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %master5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %master, ptr %master5, align 8
  br label %if.end6

if.end6:                                          ; preds = %list_add_tail.exit, %do.body.if.end6_crit_edge
  %name7 = getelementptr inbounds %struct.snd_i2c_bus, ptr %call7.i.i, i32 0, i32 1
  %call8 = tail call i32 @strscpy(ptr noundef %name7, ptr noundef %name, i32 noundef 32) #3
  %call9 = tail call i32 @snd_device_new(ptr noundef %card, i32 noundef 2, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @snd_i2c_bus_create.ops) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  %call12 = tail call fastcc i32 @snd_i2c_bus_free(ptr noundef nonnull %call7.i.i)
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  %15 = ptrtoint ptr %ri2c to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i, ptr %ri2c, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.then11 ], [ 0, %if.end13 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_i2c_bus_dev_free(ptr nocapture noundef readonly %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %device_data = getelementptr inbounds %struct.snd_device, ptr %device, i32 0, i32 4
  %0 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device_data, align 4
  %call = tail call fastcc i32 @snd_i2c_bus_free(ptr noundef %1)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_device_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_i2c_bus_free(ptr noundef %bus) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %bus, null
  br i1 %tobool.not, label %do.end, label %while.cond.preheader, !prof !37

while.cond.preheader:                             ; preds = %entry
  %devices = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus, i32 0, i32 5
  %0 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %devices, align 4
  %cmp.i.not66 = icmp eq ptr %1, %devices
  br i1 %cmp.i.not66, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 39, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

while.body:                                       ; preds = %snd_i2c_device_free.exit.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %2 = phi ptr [ %16, %snd_i2c_device_free.exit.while.body_crit_edge ], [ %1, %while.cond.preheader.while.body_crit_edge ]
  %bus.i = getelementptr inbounds %struct.snd_i2c_device, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bus.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %while.body.if.end.i_crit_edge, label %if.then.i

while.body.if.end.i_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

if.then.i:                                        ; preds = %while.body
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #3
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del.exit.i_crit_edge

if.then.i.list_del.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %2, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.i.list_del.exit.i_crit_edge
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %list_del.exit.i, %while.body.if.end.i_crit_edge
  %private_free.i = getelementptr inbounds %struct.snd_i2c_device, ptr %2, i32 0, i32 7
  %13 = ptrtoint ptr %private_free.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %private_free.i, align 4
  %tobool1.not.i = icmp eq ptr %14, null
  br i1 %tobool1.not.i, label %if.end.i.snd_i2c_device_free.exit_crit_edge, label %if.then2.i

if.end.i.snd_i2c_device_free.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %snd_i2c_device_free.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %14(ptr noundef %2) #3
  br label %snd_i2c_device_free.exit

snd_i2c_device_free.exit:                         ; preds = %if.then2.i, %if.end.i.snd_i2c_device_free.exit_crit_edge
  tail call void @kfree(ptr noundef %2) #3
  %15 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %devices, align 4
  %cmp.i.not = icmp eq ptr %16, %devices
  br i1 %cmp.i.not, label %snd_i2c_device_free.exit.while.end_crit_edge, label %snd_i2c_device_free.exit.while.body_crit_edge

snd_i2c_device_free.exit.while.body_crit_edge:    ; preds = %snd_i2c_device_free.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

snd_i2c_device_free.exit.while.end_crit_edge:     ; preds = %snd_i2c_device_free.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.end:                                        ; preds = %snd_i2c_device_free.exit.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %master = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus, i32 0, i32 3
  %17 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %master, align 4
  %tobool30.not = icmp eq ptr %18, null
  %buses33 = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus, i32 0, i32 4
  br i1 %tobool30.not, label %while.cond32.preheader, label %if.then31

while.cond32.preheader:                           ; preds = %while.end
  %19 = ptrtoint ptr %buses33 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %buses33, align 4
  %cmp.i64.not67 = icmp eq ptr %20, %buses33
  br i1 %cmp.i64.not67, label %while.cond32.preheader.if.end45_crit_edge, label %while.cond32.preheader.while.body38_crit_edge

while.cond32.preheader.while.body38_crit_edge:    ; preds = %while.cond32.preheader
  br label %while.body38

while.cond32.preheader.if.end45_crit_edge:        ; preds = %while.cond32.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end45

if.then31:                                        ; preds = %while.end
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %buses33) #3
  br i1 %call.i.i, label %if.end.i.i, label %if.then31.list_del.exit_crit_edge

if.then31.list_del.exit_crit_edge:                ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i63 = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %prev.i.i63 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i63, align 4
  %23 = ptrtoint ptr %buses33 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %buses33, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then31.list_del.exit_crit_edge
  %27 = ptrtoint ptr %buses33 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 256 to ptr), ptr %buses33, align 4
  %prev.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus, i32 0, i32 4, i32 1
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end45

while.body38:                                     ; preds = %while.body38.while.body38_crit_edge, %while.cond32.preheader.while.body38_crit_edge
  %29 = phi ptr [ %33, %while.body38.while.body38_crit_edge ], [ %20, %while.cond32.preheader.while.body38_crit_edge ]
  %add.ptr43 = getelementptr i8, ptr %29, i32 -132
  %30 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bus, align 4
  tail call void @snd_device_free(ptr noundef %31, ptr noundef %add.ptr43) #3
  %32 = ptrtoint ptr %buses33 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %buses33, align 4
  %cmp.i64.not = icmp eq ptr %33, %buses33
  br i1 %cmp.i64.not, label %while.body38.if.end45_crit_edge, label %while.body38.while.body38_crit_edge

while.body38.while.body38_crit_edge:              ; preds = %while.body38
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body38

while.body38.if.end45_crit_edge:                  ; preds = %while.body38
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end45

if.end45:                                         ; preds = %while.body38.if.end45_crit_edge, %list_del.exit, %while.cond32.preheader.if.end45_crit_edge
  %private_free = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus, i32 0, i32 10
  %34 = ptrtoint ptr %private_free to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %private_free, align 4
  %tobool46.not = icmp eq ptr %35, null
  br i1 %tobool46.not, label %if.end45.if.end49_crit_edge, label %if.then47

if.end45.if.end49_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end49

if.then47:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %35(ptr noundef nonnull %bus) #3
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.end45.if.end49_crit_edge
  tail call void @kfree(ptr noundef nonnull %bus) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end49 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_i2c_device_create(ptr noundef %bus, ptr noundef %name, i8 noundef zeroext %addr, ptr nocapture noundef writeonly %rdevice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rdevice to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %rdevice, align 4
  %tobool.not = icmp eq ptr %bus, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !37

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 105, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

if.end23:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 60) #6
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %if.end23.cleanup_crit_edge, label %if.end25

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end25:                                         ; preds = %if.end23
  %conv = zext i8 %addr to i16
  %addr26 = getelementptr inbounds %struct.snd_i2c_device, ptr %call7.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %addr26 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %addr26, align 2
  %name27 = getelementptr inbounds %struct.snd_i2c_device, ptr %call7.i.i, i32 0, i32 2
  %call28 = tail call i32 @strscpy(ptr noundef %name27, ptr noundef %name, i32 noundef 32) #3
  %devices = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus, i32 0, i32 5
  %prev.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus, i32 0, i32 5, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %4, ptr noundef %devices) #3
  br i1 %call.i.i, label %if.end.i.i, label %if.end25.list_add_tail.exit_crit_edge

if.end25.list_add_tail.exit_crit_edge:            ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #5
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %devices, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev3.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %call7.i.i, ptr %4, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end25.list_add_tail.exit_crit_edge
  %bus29 = getelementptr inbounds %struct.snd_i2c_device, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %bus29 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %bus, ptr %bus29, align 8
  %10 = ptrtoint ptr %rdevice to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %rdevice, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.end23.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %list_add_tail.exit ], [ -12, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_i2c_device_free(ptr noundef %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.snd_i2c_device, ptr %device, i32 0, i32 1
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %device) #3
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %device, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %8 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %device, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %device, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end

if.end:                                           ; preds = %list_del.exit, %entry.if.end_crit_edge
  %private_free = getelementptr inbounds %struct.snd_i2c_device, ptr %device, i32 0, i32 7
  %10 = ptrtoint ptr %private_free to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private_free, align 4
  %tobool1.not = icmp eq ptr %11, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %11(ptr noundef %device) #3
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  tail call void @kfree(ptr noundef %device) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_i2c_sendbytes(ptr noundef %device, ptr noundef %bytes, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.snd_i2c_device, ptr %device, i32 0, i32 1
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %ops = getelementptr inbounds %struct.snd_i2c_bus, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call = tail call i32 %5(ptr noundef %device, ptr noundef %bytes, i32 noundef %count) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_i2c_readbytes(ptr noundef %device, ptr noundef %bytes, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.snd_i2c_device, ptr %device, i32 0, i32 1
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %ops = getelementptr inbounds %struct.snd_i2c_bus, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %readbytes = getelementptr inbounds %struct.snd_i2c_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %readbytes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %readbytes, align 4
  %call = tail call i32 %5(ptr noundef %device, ptr noundef %bytes, i32 noundef %count) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_i2c_probeaddr(ptr noundef %bus, i16 noundef zeroext %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus, i32 0, i32 7
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %probeaddr = getelementptr inbounds %struct.snd_i2c_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %probeaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %probeaddr, align 4
  %call = tail call i32 %3(ptr noundef %bus, i16 noundef zeroext %addr) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_i2c_bit_sendbytes(ptr nocapture noundef readonly %device, ptr nocapture noundef readonly %bytes, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %bus1 = getelementptr inbounds %struct.snd_i2c_device, ptr %device, i32 0, i32 1
  %0 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus1, align 4
  %flags = getelementptr inbounds %struct.snd_i2c_device, ptr %device, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 4
  %4 = and i16 %3, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw_ops.i.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw_ops.i.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.snd_i2c_bit_hw_start.exit.i_crit_edge, label %if.then.i.i

if.end.snd_i2c_bit_hw_start.exit.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %snd_i2c_bit_hw_start.exit.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %8(ptr noundef %1) #3
  br label %snd_i2c_bit_hw_start.exit.i

snd_i2c_bit_hw_start.exit.i:                      ; preds = %if.then.i.i, %if.end.snd_i2c_bit_hw_start.exit.i_crit_edge
  %9 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw_ops.i.i, align 4
  %direction.i.i = getelementptr inbounds %struct.snd_i2c_bit_ops, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %direction.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %direction.i.i, align 4
  %tobool.not.i6.i = icmp eq ptr %12, null
  br i1 %tobool.not.i6.i, label %snd_i2c_bit_hw_start.exit.i.snd_i2c_bit_start.exit_crit_edge, label %if.then.i7.i

snd_i2c_bit_hw_start.exit.i.snd_i2c_bit_start.exit_crit_edge: ; preds = %snd_i2c_bit_hw_start.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %snd_i2c_bit_start.exit

if.then.i7.i:                                     ; preds = %snd_i2c_bit_hw_start.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %12(ptr noundef %1, i32 noundef 1, i32 noundef 1) #3
  br label %snd_i2c_bit_start.exit

snd_i2c_bit_start.exit:                           ; preds = %if.then.i7.i, %snd_i2c_bit_hw_start.exit.i.snd_i2c_bit_start.exit_crit_edge
  %13 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw_ops.i.i, align 4
  %setlines.i.i = getelementptr inbounds %struct.snd_i2c_bit_ops, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %setlines.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %setlines.i.i, align 4
  tail call void %16(ptr noundef %1, i32 noundef 1, i32 noundef 1) #3
  %17 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw_ops.i.i, align 4
  %setlines.i10.i = getelementptr inbounds %struct.snd_i2c_bit_ops, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %setlines.i10.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %setlines.i10.i, align 4
  tail call void %20(ptr noundef %1, i32 noundef 1, i32 noundef 0) #3
  %21 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw_ops.i.i, align 4
  %setlines.i12.i = getelementptr inbounds %struct.snd_i2c_bit_ops, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %setlines.i12.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %setlines.i12.i, align 4
  tail call void %24(ptr noundef %1, i32 noundef 0, i32 noundef 0) #3
  %addr = getelementptr inbounds %struct.snd_i2c_device, ptr %device, i32 0, i32 4
  %25 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %addr, align 2
  %conv2 = trunc i16 %26 to i8
  %shl = shl i8 %conv2, 1
  %call = tail call fastcc i32 @snd_i2c_bit_sendbyte(ptr noundef %1, i8 noundef zeroext %shl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then5, label %while.cond.preheader

while.cond.preheader:                             ; preds = %snd_i2c_bit_start.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp738 = icmp sgt i32 %count, 0
  br i1 %cmp738, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

if.then5:                                         ; preds = %snd_i2c_bit_start.exit
  %27 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw_ops.i.i, align 4
  %stop.i = getelementptr inbounds %struct.snd_i2c_bit_ops, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %stop.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %stop.i, align 4
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %if.then5.cleanup_crit_edge, label %if.then5.cleanup.sink.split_crit_edge

if.then5.cleanup.sink.split_crit_edge:            ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

while.body:                                       ; preds = %if.end13.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %res.040 = phi i32 [ %inc, %if.end13.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %bytes.addr.039 = phi ptr [ %incdec.ptr, %if.end13.while.body_crit_edge ], [ %bytes, %while.cond.preheader.while.body_crit_edge ]
  %31 = ptrtoint ptr %bytes.addr.039 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bytes.addr.039, align 1
  %call9 = tail call fastcc i32 @snd_i2c_bit_sendbyte(ptr noundef %1, i8 noundef zeroext %32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %while.body
  %33 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw_ops.i.i, align 4
  %stop.i28 = getelementptr inbounds %struct.snd_i2c_bit_ops, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %stop.i28 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %stop.i28, align 4
  %tobool.not.i29 = icmp eq ptr %36, null
  br i1 %tobool.not.i29, label %if.then12.cleanup_crit_edge, label %if.then12.cleanup.sink.split_crit_edge

if.then12.cleanup.sink.split_crit_edge:           ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end13:                                         ; preds = %while.body
  %incdec.ptr = getelementptr i8, ptr %bytes.addr.039, i32 1
  %inc = add nuw i32 %res.040, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %if.end13.while.end_crit_edge, label %if.end13.while.body_crit_edge

if.end13.while.body_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

if.end13.while.end_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.end:                                        ; preds = %if.end13.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %res.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %count, %if.end13.while.end_crit_edge ]
  %37 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hw_ops.i.i, align 4
  %setlines.i.i33 = getelementptr inbounds %struct.snd_i2c_bit_ops, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %setlines.i.i33 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %setlines.i.i33, align 4
  tail call void %40(ptr noundef %1, i32 noundef 0, i32 noundef 0) #3
  %41 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hw_ops.i.i, align 4
  %setlines.i5.i = getelementptr inbounds %struct.snd_i2c_bit_ops, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %setlines.i5.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %setlines.i5.i, align 4
  tail call void %44(ptr noundef %1, i32 noundef 1, i32 noundef 0) #3
  %45 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hw_ops.i.i, align 4
  %setlines.i7.i = getelementptr inbounds %struct.snd_i2c_bit_ops, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %setlines.i7.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %setlines.i7.i, align 4
  tail call void %48(ptr noundef %1, i32 noundef 1, i32 noundef 1) #3
  %49 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hw_ops.i.i, align 4
  %stop.i.i = getelementptr inbounds %struct.snd_i2c_bit_ops, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %stop.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %stop.i.i, align 4
  %tobool.not.i.i34 = icmp eq ptr %52, null
  br i1 %tobool.not.i.i34, label %while.end.cleanup_crit_edge, label %while.end.cleanup.sink.split_crit_edge

while.end.cleanup.sink.split_crit_edge:           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cleanup.sink.split:                               ; preds = %while.end.cleanup.sink.split_crit_edge, %if.then12.cleanup.sink.split_crit_edge, %if.then5.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %30, %if.then5.cleanup.sink.split_crit_edge ], [ %36, %if.then12.cleanup.sink.split_crit_edge ], [ %52, %while.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call, %if.then5.cleanup.sink.split_crit_edge ], [ %call9, %if.then12.cleanup.sink.split_crit_edge ], [ %res.0.lcssa, %while.end.cleanup.sink.split_crit_edge ]
  tail call void %.sink(ptr noundef %1) #3
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %while.end.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ %call, %if.then5.cleanup_crit_edge ], [ %call9, %if.then12.cleanup_crit_edge ], [ %res.0.lcssa, %while.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_i2c_bit_readbytes(ptr nocapture noundef readonly %device, ptr nocapture noundef writeonly %bytes, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %bus1 = getelementptr inbounds %struct.snd_i2c_device, ptr %device, i32 0, i32 1
  %0 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus1, align 4
  %flags = getelementptr inbounds %struct.snd_i2c_device, ptr %device, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 4
  %4 = and i16 %3, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw_ops.i.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw_ops.i.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.snd_i2c_bit_hw_start.exit.i_crit_edge, label %if.then.i.i

if.end.snd_i2c_bit_hw_start.exit.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %snd_i2c_bit_hw_start.exit.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %8(ptr noundef %1) #3
  br label %snd_i2c_bit_hw_start.exit.i

snd_i2c_bit_hw_start.exit.i:                      ; preds = %if.then.i.i, %if.end.snd_i2c_bit_hw_start.exit.i_crit_edge
  %9 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw_ops.i.i, align 4
  %direction.i.i = getelementptr inbounds %struct.snd_i2c_bit_ops, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %direction.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %direction.i.i, align 4
  %tobool.not.i6.i = icmp eq ptr %12, null
  br i1 %tobool.not.i6.i, label %snd_i2c_bit_hw_start.exit.i.snd_i2c_bit_start.exit_crit_edge, label %if.then.i7.i

snd_i2c_bit_hw_start.exit.i.snd_i2c_bit_start.exit_crit_edge: ; preds = %snd_i2c_bit_hw_start.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %snd_i2c_bit_start.exit

if.then.i7.i:                                     ; preds = %snd_i2c_bit_hw_start.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %12(ptr noundef %1, i32 noundef 1, i32 noundef 1) #3
  br label %snd_i2c_bit_start.exit

snd_i2c_bit_start.exit:                           ; preds = %if.then.i7.i, %snd_i2c_bit_hw_start.exit.i.snd_i2c_bit_start.exit_crit_edge
  %13 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw_ops.i.i, align 4
  %setlines.i.i = getelementptr inbounds %struct.snd_i2c_bit_ops, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %setlines.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %setlines.i.i, align 4
  tail call void %16(ptr noundef %1, i32 noundef 1, i32 noundef 1) #3
  %17 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw_ops.i.i, align 4
  %setlines.i10.i = getelementptr inbounds %struct.snd_i2c_bit_ops, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %setlines.i10.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %setlines.i10.i, align 4
  tail call void %20(ptr noundef %1, i32 noundef 1, i32 noundef 0) #3
  %21 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw_ops.i.i, align 4
  %setlines.i12.i = getelementptr inbounds %struct.snd_i2c_bit_ops, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %setlines.i12.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %setlines.i12.i, align 4
  tail call void %24(ptr noundef %1, i32 noundef 0, i32 noundef 0) #3
  %addr = getelementptr inbounds %struct.snd_i2c_device, ptr %device, i32 0, i32 4
  %25 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %addr, align 2
  %conv2 = trunc i16 %26 to i8
  %shl = shl i8 %conv2, 1
  %or = or i8 %shl, 1
  %call = tail call fastcc i32 @snd_i2c_bit_sendbyte(ptr noundef %1, i8 noundef zeroext %or)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then5, label %while.cond.preheader

while.cond.preheader:                             ; preds = %snd_i2c_bit_start.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp743 = icmp sgt i32 %count, 0
  br i1 %cmp743, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

if.then5:                                         ; preds = %snd_i2c_bit_start.exit
  %27 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw_ops.i.i, align 4
  %stop.i = getelementptr inbounds %struct.snd_i2c_bit_ops, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %stop.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %stop.i, align 4
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %if.then5.cleanup_crit_edge, label %if.then5.cleanup.sink.split_crit_edge

if.then5.cleanup.sink.split_crit_edge:            ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

while.body:                                       ; preds = %snd_i2c_bit_readbyte.exit.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %dec46.in = phi i32 [ %dec46, %snd_i2c_bit_readbyte.exit.while.body_crit_edge ], [ %count, %while.cond.preheader.while.body_crit_edge ]
  %res.045 = phi i32 [ %inc, %snd_i2c_bit_readbyte.exit.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %bytes.addr.044 = phi ptr [ %incdec.ptr, %snd_i2c_bit_readbyte.exit.while.body_crit_edge ], [ %bytes, %while.cond.preheader.while.body_crit_edge ]
  %dec46 = add nsw i32 %dec46.in, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec46)
  %cmp9 = icmp eq i32 %dec46, 0
  %31 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw_ops.i.i, align 4
  %setlines.i.i33 = getelementptr inbounds %struct.snd_i2c_bit_ops, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %setlines.i.i33 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %setlines.i.i33, align 4
  tail call void %34(ptr noundef %1, i32 noundef 0, i32 noundef 1) #3
  %35 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw_ops.i.i, align 4
  %direction.i.i34 = getelementptr inbounds %struct.snd_i2c_bit_ops, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %direction.i.i34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %direction.i.i34, align 4
  %tobool.not.i.i35 = icmp eq ptr %38, null
  br i1 %tobool.not.i.i35, label %while.body.for.body.i.preheader_crit_edge, label %if.then.i.i36

while.body.for.body.i.preheader_crit_edge:        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i.preheader

if.then.i.i36:                                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %38(ptr noundef %1, i32 noundef 1, i32 noundef 0) #3
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.then.i.i36, %while.body.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %data.026.i = phi i8 [ %data.1.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %i.025.i = phi i32 [ %dec.i, %for.body.i.for.body.i_crit_edge ], [ 7, %for.body.i.preheader ]
  %39 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hw_ops.i.i, align 4
  %setlines.i16.i = getelementptr inbounds %struct.snd_i2c_bit_ops, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %setlines.i16.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %setlines.i16.i, align 4
  tail call void %42(ptr noundef %1, i32 noundef 1, i32 noundef 1) #3
  %43 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hw_ops.i.i, align 4
  %getdata.i.i = getelementptr inbounds %struct.snd_i2c_bit_ops, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %getdata.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %getdata.i.i, align 4
  %call.i.i = tail call i32 %46(ptr noundef %1, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i37 = icmp eq i32 %call.i.i, 0
  %shl.i = shl nuw i32 1, %i.025.i
  %47 = trunc i32 %shl.i to i8
  %conv1.i = select i1 %tobool.not.i37, i8 0, i8 %47
  %data.1.i = or i8 %conv1.i, %data.026.i
  %48 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hw_ops.i.i, align 4
  %setlines.i19.i = getelementptr inbounds %struct.snd_i2c_bit_ops, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %setlines.i19.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %setlines.i19.i, align 4
  tail call void %51(ptr noundef %1, i32 noundef 0, i32 noundef 1) #3
  %dec.i = add nsw i32 %i.025.i, -1
  %cmp.not.i = icmp eq i32 %i.025.i, 0
  br i1 %cmp.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %52 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hw_ops.i.i, align 4
  %direction.i21.i = getelementptr inbounds %struct.snd_i2c_bit_ops, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %direction.i21.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %direction.i21.i, align 4
  %tobool.not.i22.i = icmp eq ptr %55, null
  br i1 %tobool.not.i22.i, label %for.end.i.snd_i2c_bit_readbyte.exit_crit_edge, label %if.then.i23.i

for.end.i.snd_i2c_bit_readbyte.exit_crit_edge:    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %snd_i2c_bit_readbyte.exit

if.then.i23.i:                                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %55(ptr noundef %1, i32 noundef 1, i32 noundef 1) #3
  br label %snd_i2c_bit_readbyte.exit

snd_i2c_bit_readbyte.exit:                        ; preds = %if.then.i23.i, %for.end.i.snd_i2c_bit_readbyte.exit_crit_edge
  %lnot.ext.i = zext i1 %cmp9 to i32
  %56 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hw_ops.i.i, align 4
  %setlines.i.i.i = getelementptr inbounds %struct.snd_i2c_bit_ops, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %setlines.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %setlines.i.i.i, align 4
  tail call void %59(ptr noundef %1, i32 noundef 0, i32 noundef %lnot.ext.i) #3
  %60 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hw_ops.i.i, align 4
  %setlines.i6.i.i = getelementptr inbounds %struct.snd_i2c_bit_ops, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %setlines.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %setlines.i6.i.i, align 4
  tail call void %63(ptr noundef %1, i32 noundef 1, i32 noundef %lnot.ext.i) #3
  %64 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hw_ops.i.i, align 4
  %setlines.i8.i.i = getelementptr inbounds %struct.snd_i2c_bit_ops, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %setlines.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %setlines.i8.i.i, align 4
  tail call void %67(ptr noundef %1, i32 noundef 0, i32 noundef %lnot.ext.i) #3
  %incdec.ptr = getelementptr i8, ptr %bytes.addr.044, i32 1
  %68 = ptrtoint ptr %bytes.addr.044 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %data.1.i, ptr %bytes.addr.044, align 1
  %inc = add nuw i32 %res.045, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %snd_i2c_bit_readbyte.exit.while.end_crit_edge, label %snd_i2c_bit_readbyte.exit.while.body_crit_edge

snd_i2c_bit_readbyte.exit.while.body_crit_edge:   ; preds = %snd_i2c_bit_readbyte.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

snd_i2c_bit_readbyte.exit.while.end_crit_edge:    ; preds = %snd_i2c_bit_readbyte.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.end:                                        ; preds = %snd_i2c_bit_readbyte.exit.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %res.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %count, %snd_i2c_bit_readbyte.exit.while.end_crit_edge ]
  %69 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %hw_ops.i.i, align 4
  %setlines.i.i39 = getelementptr inbounds %struct.snd_i2c_bit_ops, ptr %70, i32 0, i32 3
  %71 = ptrtoint ptr %setlines.i.i39 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %setlines.i.i39, align 4
  tail call void %72(ptr noundef %1, i32 noundef 0, i32 noundef 0) #3
  %73 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hw_ops.i.i, align 4
  %setlines.i5.i = getelementptr inbounds %struct.snd_i2c_bit_ops, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %setlines.i5.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %setlines.i5.i, align 4
  tail call void %76(ptr noundef %1, i32 noundef 1, i32 noundef 0) #3
  %77 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %hw_ops.i.i, align 4
  %setlines.i7.i = getelementptr inbounds %struct.snd_i2c_bit_ops, ptr %78, i32 0, i32 3
  %79 = ptrtoint ptr %setlines.i7.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %setlines.i7.i, align 4
  tail call void %80(ptr noundef %1, i32 noundef 1, i32 noundef 1) #3
  %81 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %hw_ops.i.i, align 4
  %stop.i.i = getelementptr inbounds %struct.snd_i2c_bit_ops, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %stop.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %stop.i.i, align 4
  %tobool.not.i.i40 = icmp eq ptr %84, null
  br i1 %tobool.not.i.i40, label %while.end.cleanup_crit_edge, label %while.end.cleanup.sink.split_crit_edge

while.end.cleanup.sink.split_crit_edge:           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cleanup.sink.split:                               ; preds = %while.end.cleanup.sink.split_crit_edge, %if.then5.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %30, %if.then5.cleanup.sink.split_crit_edge ], [ %84, %while.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call, %if.then5.cleanup.sink.split_crit_edge ], [ %res.0.lcssa, %while.end.cleanup.sink.split_crit_edge ]
  tail call void %.sink(ptr noundef %1) #3
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %while.end.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ %call, %if.then5.cleanup_crit_edge ], [ %res.0.lcssa, %while.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_i2c_bit_probeaddr(ptr noundef %bus, i16 noundef zeroext %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %addr to i32
  %and = and i32 %conv, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %and2 = and i32 %conv, 32640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %hw_ops.i.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus, i32 0, i32 6
  %0 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_ops.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end5.snd_i2c_bit_hw_start.exit.i_crit_edge, label %if.then.i.i

if.end5.snd_i2c_bit_hw_start.exit.i_crit_edge:    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  br label %snd_i2c_bit_hw_start.exit.i

if.then.i.i:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %3(ptr noundef %bus) #3
  br label %snd_i2c_bit_hw_start.exit.i

snd_i2c_bit_hw_start.exit.i:                      ; preds = %if.then.i.i, %if.end5.snd_i2c_bit_hw_start.exit.i_crit_edge
  %4 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_ops.i.i, align 4
  %direction.i.i = getelementptr inbounds %struct.snd_i2c_bit_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %direction.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %direction.i.i, align 4
  %tobool.not.i6.i = icmp eq ptr %7, null
  br i1 %tobool.not.i6.i, label %snd_i2c_bit_hw_start.exit.i.snd_i2c_bit_start.exit_crit_edge, label %if.then.i7.i

snd_i2c_bit_hw_start.exit.i.snd_i2c_bit_start.exit_crit_edge: ; preds = %snd_i2c_bit_hw_start.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %snd_i2c_bit_start.exit

if.then.i7.i:                                     ; preds = %snd_i2c_bit_hw_start.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %7(ptr noundef %bus, i32 noundef 1, i32 noundef 1) #3
  br label %snd_i2c_bit_start.exit

snd_i2c_bit_start.exit:                           ; preds = %if.then.i7.i, %snd_i2c_bit_hw_start.exit.i.snd_i2c_bit_start.exit_crit_edge
  %8 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_ops.i.i, align 4
  %setlines.i.i = getelementptr inbounds %struct.snd_i2c_bit_ops, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %setlines.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %setlines.i.i, align 4
  tail call void %11(ptr noundef %bus, i32 noundef 1, i32 noundef 1) #3
  %12 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw_ops.i.i, align 4
  %setlines.i10.i = getelementptr inbounds %struct.snd_i2c_bit_ops, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %setlines.i10.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %setlines.i10.i, align 4
  tail call void %15(ptr noundef %bus, i32 noundef 1, i32 noundef 0) #3
  %16 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw_ops.i.i, align 4
  %setlines.i12.i = getelementptr inbounds %struct.snd_i2c_bit_ops, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %setlines.i12.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %setlines.i12.i, align 4
  tail call void %19(ptr noundef %bus, i32 noundef 0, i32 noundef 0) #3
  %addr.tr = trunc i16 %addr to i8
  %conv7 = shl i8 %addr.tr, 1
  %call = tail call fastcc i32 @snd_i2c_bit_sendbyte(ptr noundef %bus, i8 noundef zeroext %conv7)
  %20 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw_ops.i.i, align 4
  %setlines.i.i13 = getelementptr inbounds %struct.snd_i2c_bit_ops, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %setlines.i.i13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %setlines.i.i13, align 4
  tail call void %23(ptr noundef %bus, i32 noundef 0, i32 noundef 0) #3
  %24 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw_ops.i.i, align 4
  %setlines.i5.i = getelementptr inbounds %struct.snd_i2c_bit_ops, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %setlines.i5.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %setlines.i5.i, align 4
  tail call void %27(ptr noundef %bus, i32 noundef 1, i32 noundef 0) #3
  %28 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw_ops.i.i, align 4
  %setlines.i7.i = getelementptr inbounds %struct.snd_i2c_bit_ops, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %setlines.i7.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %setlines.i7.i, align 4
  tail call void %31(ptr noundef %bus, i32 noundef 1, i32 noundef 1) #3
  %32 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw_ops.i.i, align 4
  %stop.i.i = getelementptr inbounds %struct.snd_i2c_bit_ops, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %stop.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %stop.i.i, align 4
  %tobool.not.i.i14 = icmp eq ptr %35, null
  br i1 %tobool.not.i.i14, label %snd_i2c_bit_start.exit.cleanup_crit_edge, label %if.then.i.i15

snd_i2c_bit_start.exit.cleanup_crit_edge:         ; preds = %snd_i2c_bit_start.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then.i.i15:                                    ; preds = %snd_i2c_bit_start.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %35(ptr noundef %bus) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i15, %snd_i2c_bit_start.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call, %snd_i2c_bit_start.exit.cleanup_crit_edge ], [ %call, %if.then.i.i15 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_i2c_bit_sendbyte(ptr noundef %bus, i8 noundef zeroext %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %data to i32
  %hw_ops.i.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.011 = phi i32 [ 7, %entry ], [ %dec, %for.body.for.body_crit_edge ]
  %0 = lshr i32 %conv, %i.011
  %1 = and i32 %0, 1
  %2 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_ops.i.i, align 4
  %setlines.i.i = getelementptr inbounds %struct.snd_i2c_bit_ops, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %setlines.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %setlines.i.i, align 4
  tail call void %5(ptr noundef %bus, i32 noundef 0, i32 noundef %1) #3
  %6 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_ops.i.i, align 4
  %setlines.i6.i = getelementptr inbounds %struct.snd_i2c_bit_ops, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %setlines.i6.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %setlines.i6.i, align 4
  tail call void %9(ptr noundef %bus, i32 noundef 1, i32 noundef %1) #3
  %10 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw_ops.i.i, align 4
  %setlines.i8.i = getelementptr inbounds %struct.snd_i2c_bit_ops, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %setlines.i8.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %setlines.i8.i, align 4
  tail call void %13(ptr noundef %bus, i32 noundef 0, i32 noundef %1) #3
  %dec = add nsw i32 %i.011, -1
  %cmp.not = icmp eq i32 %i.011, 0
  br i1 %cmp.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %for.body
  %14 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw_ops.i.i, align 4
  %setlines.i.i10 = getelementptr inbounds %struct.snd_i2c_bit_ops, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %setlines.i.i10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %setlines.i.i10, align 4
  tail call void %17(ptr noundef %bus, i32 noundef 0, i32 noundef 1) #3
  %18 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw_ops.i.i, align 4
  %setlines.i7.i = getelementptr inbounds %struct.snd_i2c_bit_ops, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %setlines.i7.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %setlines.i7.i, align 4
  tail call void %21(ptr noundef %bus, i32 noundef 1, i32 noundef 1) #3
  %22 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw_ops.i.i, align 4
  %direction.i.i = getelementptr inbounds %struct.snd_i2c_bit_ops, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %direction.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %direction.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i, label %for.end.snd_i2c_bit_direction.exit.i_crit_edge, label %if.then.i.i

for.end.snd_i2c_bit_direction.exit.i_crit_edge:   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %snd_i2c_bit_direction.exit.i

if.then.i.i:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %25(ptr noundef %bus, i32 noundef 1, i32 noundef 0) #3
  br label %snd_i2c_bit_direction.exit.i

snd_i2c_bit_direction.exit.i:                     ; preds = %if.then.i.i, %for.end.snd_i2c_bit_direction.exit.i_crit_edge
  %26 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw_ops.i.i, align 4
  %getdata.i.i = getelementptr inbounds %struct.snd_i2c_bit_ops, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %getdata.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %getdata.i.i, align 4
  %call.i.i = tail call i32 %29(ptr noundef %bus, i32 noundef 1) #3
  %30 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw_ops.i.i, align 4
  %direction.i11.i = getelementptr inbounds %struct.snd_i2c_bit_ops, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %direction.i11.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %direction.i11.i, align 4
  %tobool.not.i12.i = icmp eq ptr %33, null
  br i1 %tobool.not.i12.i, label %snd_i2c_bit_direction.exit.i.snd_i2c_bit_ack.exit_crit_edge, label %if.then.i13.i

snd_i2c_bit_direction.exit.i.snd_i2c_bit_ack.exit_crit_edge: ; preds = %snd_i2c_bit_direction.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %snd_i2c_bit_ack.exit

if.then.i13.i:                                    ; preds = %snd_i2c_bit_direction.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %33(ptr noundef %bus, i32 noundef 1, i32 noundef 1) #3
  br label %snd_i2c_bit_ack.exit

snd_i2c_bit_ack.exit:                             ; preds = %if.then.i13.i, %snd_i2c_bit_direction.exit.i.snd_i2c_bit_ack.exit_crit_edge
  %34 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw_ops.i.i, align 4
  %setlines.i16.i = getelementptr inbounds %struct.snd_i2c_bit_ops, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %setlines.i16.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %setlines.i16.i, align 4
  tail call void %37(ptr noundef %bus, i32 noundef 0, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  %cond.i = select i1 %tobool.not.i, i32 0, i32 -5
  ret i32 %cond.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_device_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !14, !16, !18, !20, !22, !24, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @__UNIQUE_ID_author185, !1, !"__UNIQUE_ID_author185", i1 false, i1 false}
!1 = !{!"../sound/i2c/i2c.c", i32 17, i32 1}
!2 = !{ptr @__UNIQUE_ID_description186, !3, !"__UNIQUE_ID_description186", i1 false, i1 false}
!3 = !{!"../sound/i2c/i2c.c", i32 18, i32 1}
!4 = !{ptr @__UNIQUE_ID_file187, !5, !"__UNIQUE_ID_file187", i1 false, i1 false}
!5 = !{!"../sound/i2c/i2c.c", i32 19, i32 1}
!6 = !{ptr @__UNIQUE_ID_license188, !5, !"__UNIQUE_ID_license188", i1 false, i1 false}
!7 = !{ptr @snd_i2c_bus_create.ops, !8, !"ops", i1 false, i1 false}
!8 = !{!"../sound/i2c/i2c.c", i32 70, i32 37}
!9 = !{ptr @snd_i2c_bus_create.__key, !10, !"__key", i1 false, i1 false}
!10 = !{!"../sound/i2c/i2c.c", i32 78, i32 2}
!11 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__ksymtab_snd_i2c_bus_create, !13, !"__ksymtab_snd_i2c_bus_create", i1 false, i1 false}
!13 = !{!"../sound/i2c/i2c.c", i32 97, i32 1}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/i2c/i2c.c", i32 105, i32 6}
!16 = !{ptr @__ksymtab_snd_i2c_device_create, !17, !"__ksymtab_snd_i2c_device_create", i1 false, i1 false}
!17 = !{!"../sound/i2c/i2c.c", i32 118, i32 1}
!18 = !{ptr @__ksymtab_snd_i2c_device_free, !19, !"__ksymtab_snd_i2c_device_free", i1 false, i1 false}
!19 = !{!"../sound/i2c/i2c.c", i32 130, i32 1}
!20 = !{ptr @__ksymtab_snd_i2c_sendbytes, !21, !"__ksymtab_snd_i2c_sendbytes", i1 false, i1 false}
!21 = !{!"../sound/i2c/i2c.c", i32 137, i32 1}
!22 = !{ptr @__ksymtab_snd_i2c_readbytes, !23, !"__ksymtab_snd_i2c_readbytes", i1 false, i1 false}
!23 = !{!"../sound/i2c/i2c.c", i32 144, i32 1}
!24 = !{ptr @__ksymtab_snd_i2c_probeaddr, !25, !"__ksymtab_snd_i2c_probeaddr", i1 false, i1 false}
!25 = !{!"../sound/i2c/i2c.c", i32 151, i32 1}
!26 = !{ptr @snd_i2c_bit_ops, !27, !"snd_i2c_bit_ops", i1 false, i1 false}
!27 = !{!"../sound/i2c/i2c.c", i32 28, i32 33}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{!"branch_weights", i32 1, i32 2000}
