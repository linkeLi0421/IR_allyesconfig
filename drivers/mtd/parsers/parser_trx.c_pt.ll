; ModuleID = '/llk/IR_all_yes/drivers/mtd/parsers/parser_trx.c_pt.bc'
source_filename = "../drivers/mtd/parsers/parser_trx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mtd_part_parser = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.trx_header = type { i32, i32, i32, i16, i16, [3 x i32] }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.43 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.43 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.mtd_partition = type { ptr, ptr, i64, i64, i32, i32, ptr }

@__initcall__kmod_parser_trx__185_133_mtd_parser_trx_init6 = internal global ptr @mtd_parser_trx_init, section ".initcall6.init", align 4
@mtd_parser_trx = internal global { %struct.mtd_part_parser, [36 x i8] } { %struct.mtd_part_parser { %struct.list_head zeroinitializer, ptr null, ptr @.str, ptr @mtd_parser_trx_of_match_table, ptr @parser_trx_parse, ptr null }, [36 x i8] zeroinitializer }, align 32
@__exitcall_mtd_parser_trx_exit = internal global ptr @mtd_parser_trx_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file186 = internal constant [47 x i8] c"parser_trx.file=drivers/mtd/parsers/parser_trx\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [26 x i8] c"parser_trx.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description188 = internal constant [56 x i8] c"parser_trx.description=Parser for TRX format partitions\00", section ".modinfo", align 1
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"trx\00", [28 x i8] zeroinitializer }, align 32
@mtd_parser_trx_of_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,trx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"brcm,trx-magic\00", [17 x i8] zeroinitializer }, align 32
@parser_trx_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 66, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013failed to parse \22brcm,trx-magic\22 DT attribute, using default: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"parser_trx_parse\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/mtd/parsers/parser_trx.c\00", [63 x i8] zeroinitializer }, align 32
@parser_trx_parse._entry_ptr = internal global ptr @parser_trx_parse._entry, section ".printk_index", align 4
@parser_trx_parse._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 75, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013MTD reading error: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@parser_trx_parse._entry_ptr.7 = internal global ptr @parser_trx_parse._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"loader\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"linux\00", [26 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@parser_trx_data_part_name._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 39, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013mtd_read error while parsing (offset: 0x%zX): %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"parser_trx_data_part_name\00", [38 x i8] zeroinitializer }, align 32
@parser_trx_data_part_name._entry_ptr = internal global ptr @parser_trx_data_part_name._entry, section ".printk_index", align 4
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ubi\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rootfs\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967179]
@___asan_gen_.15 = private unnamed_addr constant [15 x i8] c"mtd_parser_trx\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 128, i32 31 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 130, i32 10 }
@___asan_gen_.21 = private unnamed_addr constant [30 x i8] c"mtd_parser_trx_of_match_table\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 122, i32 34 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 64, i32 33 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 66, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 75, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 88, i32 16 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 95, i32 16 }
@___asan_gen_.51 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 38, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 44, i32 10 }
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private constant [36 x i8] c"../drivers/mtd/parsers/parser_trx.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 47, i32 9 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_description188, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_license187, ptr @__exitcall_mtd_parser_trx_exit, ptr @__initcall__kmod_parser_trx__185_133_mtd_parser_trx_init6, ptr @mtd_parser_trx_exit, ptr @parser_trx_data_part_name._entry, ptr @parser_trx_data_part_name._entry_ptr, ptr @parser_trx_parse._entry, ptr @parser_trx_parse._entry.5, ptr @parser_trx_parse._entry_ptr, ptr @parser_trx_parse._entry_ptr.7, ptr @mtd_parser_trx, ptr @.str, ptr @mtd_parser_trx_of_match_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_parser_trx to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_parser_trx_of_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parser_trx_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parser_trx_parse._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parser_trx_data_part_name._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mtd_parser_trx_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__register_mtd_parser(ptr noundef nonnull @mtd_parser_trx, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mtd_parser_trx_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @deregister_mtd_parser(ptr noundef nonnull @mtd_parser_trx) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @deregister_mtd_parser(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_mtd_parser(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @parser_trx_parse(ptr noundef %mtd, ptr nocapture noundef writeonly %pparts, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  %buf.i = alloca i32, align 4
  %bytes_read.i = alloca i32, align 4
  %trx = alloca %struct.trx_header, align 4
  %bytes_read = alloca i32, align 4
  %trx_magic = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node.i.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 56, i32 27
  %0 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %trx) #7
  %2 = getelementptr inbounds %struct.trx_header, ptr %trx, i32 0, i32 5
  %3 = getelementptr inbounds %struct.trx_header, ptr %trx, i32 0, i32 5, i32 2
  %4 = call ptr @memset(ptr %trx, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_read) #7
  %5 = ptrtoint ptr %bytes_read to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %bytes_read, align 4, !annotation !48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %trx_magic) #7
  %6 = ptrtoint ptr %trx_magic to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 810697800, ptr %trx_magic, align 4
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %trx_magic, i32 noundef 1, i32 noundef 0) #7
  %7 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #7
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %do.end [
    i32 0, label %entry.if.end_crit_edge
    i32 -22, label %entry.if.end_crit_edge140
  ]

entry.if.end_crit_edge140:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %7) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge, %entry.if.end_crit_edge140
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 160) #11
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = call i32 @mtd_read(ptr noundef %mtd, i64 noundef 0, i32 noundef 28, ptr noundef nonnull %bytes_read, ptr noundef nonnull %trx) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end15, label %do.end12

do.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %call7) #10
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %cleanup

if.end15:                                         ; preds = %if.end6
  %10 = ptrtoint ptr %trx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %trx, align 4
  %12 = ptrtoint ptr %trx_magic to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %trx_magic, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp16.not = icmp eq i32 %11, %13
  br i1 %cmp16.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %cleanup

if.end18:                                         ; preds = %if.end15
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool19.not = icmp eq i32 %15, 0
  br i1 %tobool19.not, label %if.end18.if.end27_crit_edge, label %if.then20

if.end18.if.end27_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.8, ptr %call7.i.i.i, align 8
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %2, align 4
  %conv = zext i32 %18 to i64
  %offset25 = getelementptr inbounds %struct.mtd_partition, ptr %call7.i.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %offset25 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv, ptr %offset25, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then20, %if.end18.if.end27_crit_edge
  %i.0 = phi i8 [ 1, %if.then20 ], [ 0, %if.end18.if.end27_crit_edge ]
  %idxprom29 = zext i8 %i.0 to i32
  %arrayidx30 = getelementptr %struct.trx_header, ptr %trx, i32 0, i32 5, i32 %idxprom29
  %20 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool31.not = icmp eq i32 %21, 0
  br i1 %tobool31.not, label %if.end27.if.end43_crit_edge, label %if.then32

if.end27.if.end43_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %inc33 = add nuw nsw i8 %i.0, 1
  %arrayidx35 = getelementptr %struct.mtd_partition, ptr %call7.i.i.i, i32 %idxprom29
  %22 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @.str.9, ptr %arrayidx35, align 8
  %conv40 = zext i32 %21 to i64
  %offset41 = getelementptr %struct.mtd_partition, ptr %call7.i.i.i, i32 %idxprom29, i32 3
  %23 = ptrtoint ptr %offset41 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %conv40, ptr %offset41, align 8
  %.pre = zext i8 %inc33 to i32
  br label %if.end43

if.end43:                                         ; preds = %if.then32, %if.end27.if.end43_crit_edge
  %idxprom45.pre-phi = phi i32 [ %.pre, %if.then32 ], [ %idxprom29, %if.end27.if.end43_crit_edge ]
  %curr_part.1 = phi i8 [ %inc33, %if.then32 ], [ %i.0, %if.end27.if.end43_crit_edge ]
  %arrayidx46 = getelementptr %struct.trx_header, ptr %trx, i32 0, i32 5, i32 %idxprom45.pre-phi
  %24 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool47.not = icmp eq i32 %25, 0
  br i1 %tobool47.not, label %if.end63, label %if.then48

if.then48:                                        ; preds = %if.end43
  %inc49 = add nuw nsw i8 %curr_part.1, 1
  %arrayidx51 = getelementptr %struct.mtd_partition, ptr %call7.i.i.i, i32 %idxprom45.pre-phi
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #7
  %26 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %buf.i, align 4, !annotation !48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_read.i) #7
  %27 = ptrtoint ptr %bytes_read.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %bytes_read.i, align 4, !annotation !48
  %conv.i = zext i32 %25 to i64
  %call.i = call i32 @mtd_read(ptr noundef %mtd, i64 noundef %conv.i, i32 noundef 4, ptr noundef nonnull %bytes_read.i, ptr noundef nonnull %buf.i) #7
  %28 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %call.i, label %do.end.i [
    i32 0, label %if.then48.if.end.i_crit_edge
    i32 -117, label %if.then48.if.end.i_crit_edge141
  ]

if.then48.if.end.i_crit_edge141:                  ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then48.if.end.i_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %25, i32 noundef %call.i) #10
  br label %out_default.i

if.end.i:                                         ; preds = %if.then48.if.end.i_crit_edge, %if.then48.if.end.i_crit_edge141
  %29 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %buf.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 592003669, i32 %30)
  %cmp.i = icmp eq i32 %30, 592003669
  br i1 %cmp.i, label %if.end.i.if.end63.thread_crit_edge, label %if.end.i.out_default.i_crit_edge

if.end.i.out_default.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_default.i

if.end.i.if.end63.thread_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63.thread

out_default.i:                                    ; preds = %if.end.i.out_default.i_crit_edge, %do.end.i
  br label %if.end63.thread

if.end63.thread:                                  ; preds = %out_default.i, %if.end.i.if.end63.thread_crit_edge
  %retval.0.i = phi ptr [ @.str.13, %out_default.i ], [ @.str.12, %if.end.i.if.end63.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_read.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #7
  %31 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %retval.0.i, ptr %arrayidx51, align 8
  %32 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx46, align 4
  %conv60 = zext i32 %33 to i64
  %offset61 = getelementptr %struct.mtd_partition, ptr %call7.i.i.i, i32 %idxprom45.pre-phi, i32 3
  %34 = ptrtoint ptr %offset61 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %conv60, ptr %offset61, align 8
  br label %for.body.lr.ph

if.end63:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %curr_part.1)
  %cmp66133.not = icmp eq i8 %curr_part.1, 0
  br i1 %cmp66133.not, label %if.end63.for.end_crit_edge, label %if.end63.for.body.lr.ph_crit_edge

if.end63.for.body.lr.ph_crit_edge:                ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.lr.ph

if.end63.for.end_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end63.for.body.lr.ph_crit_edge, %if.end63.thread
  %curr_part.2139 = phi i8 [ %inc49, %if.end63.thread ], [ %curr_part.1, %if.end63.for.body.lr.ph_crit_edge ]
  %conv65 = zext i8 %curr_part.2139 to i32
  %sub = add nsw i32 %conv65, -1
  %size = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %indvars.iv)
  %cmp70 = icmp ugt i32 %sub, %indvars.iv
  %add = add nuw nsw i32 %indvars.iv, 1
  %offset74 = getelementptr %struct.mtd_partition, ptr %call7.i.i.i, i32 %add, i32 3
  %cond.in = select i1 %cmp70, ptr %offset74, ptr %size
  %35 = ptrtoint ptr %cond.in to i32
  call void @__asan_load8_noabort(i32 %35)
  %cond = load i64, ptr %cond.in, align 8
  %offset77 = getelementptr %struct.mtd_partition, ptr %call7.i.i.i, i32 %indvars.iv, i32 3
  %36 = ptrtoint ptr %offset77 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %offset77, align 8
  %sub78 = sub i64 %cond, %37
  %size81 = getelementptr %struct.mtd_partition, ptr %call7.i.i.i, i32 %indvars.iv, i32 2
  %38 = ptrtoint ptr %size81 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %sub78, ptr %size81, align 8
  %exitcond.not = icmp eq i32 %add, %conv65
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end63.for.end_crit_edge
  %conv64.lcssa = phi i32 [ 0, %if.end63.for.end_crit_edge ], [ %conv65, %for.body.for.end_crit_edge ]
  %39 = ptrtoint ptr %pparts to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call7.i.i.i, ptr %pparts, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then17, %do.end12, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %do.end12 ], [ -2, %if.then17 ], [ %conv64.lcssa, %for.end ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %trx_magic) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_read) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %trx) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_read(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !24, !25, !26, !28, !30, !32, !33, !34, !35, !37}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @__initcall__kmod_parser_trx__185_133_mtd_parser_trx_init6, !1, !"__initcall__kmod_parser_trx__185_133_mtd_parser_trx_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/parsers/parser_trx.c", i32 133, i32 1}
!2 = !{ptr @__exitcall_mtd_parser_trx_exit, !1, !"__exitcall_mtd_parser_trx_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file186, !4, !"__UNIQUE_ID_file186", i1 false, i1 false}
!4 = !{!"../drivers/mtd/parsers/parser_trx.c", i32 135, i32 1}
!5 = !{ptr @__UNIQUE_ID_license187, !4, !"__UNIQUE_ID_license187", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description188, !7, !"__UNIQUE_ID_description188", i1 false, i1 false}
!7 = !{!"../drivers/mtd/parsers/parser_trx.c", i32 136, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/mtd/parsers/parser_trx.c", i32 130, i32 10}
!10 = !{ptr @mtd_parser_trx, !11, !"mtd_parser_trx", i1 false, i1 false}
!11 = !{!"../drivers/mtd/parsers/parser_trx.c", i32 128, i32 31}
!12 = !{ptr @mtd_parser_trx_of_match_table, !13, !"mtd_parser_trx_of_match_table", i1 false, i1 false}
!13 = !{!"../drivers/mtd/parsers/parser_trx.c", i32 122, i32 34}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mtd/parsers/parser_trx.c", i32 64, i32 33}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mtd/parsers/parser_trx.c", i32 66, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @parser_trx_parse._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @parser_trx_parse._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mtd/parsers/parser_trx.c", i32 75, i32 3}
!24 = !{ptr @parser_trx_parse._entry.5, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @parser_trx_parse._entry_ptr.7, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mtd/parsers/parser_trx.c", i32 88, i32 16}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mtd/parsers/parser_trx.c", i32 95, i32 16}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mtd/parsers/parser_trx.c", i32 38, i32 3}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @parser_trx_data_part_name._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @parser_trx_data_part_name._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mtd/parsers/parser_trx.c", i32 44, i32 10}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mtd/parsers/parser_trx.c", i32 47, i32 9}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{!"auto-init"}
