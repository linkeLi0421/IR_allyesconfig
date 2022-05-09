; ModuleID = '/llk/IR_all_yes/drivers/mtd/parsers/redboot.c_pt.bc'
source_filename = "../drivers/mtd/parsers/redboot.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.mtd_part_parser = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.fis_image_desc = type { [16 x i8], i32, i32, i32, i32, i32, [212 x i8], i32, i32 }
%struct.fis_list = type { ptr, ptr }
%struct.mtd_partition = type { ptr, ptr, i64, i64, i32, i32, ptr }

@__param_str_directory = internal constant [18 x i8] c"redboot.directory\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@directory = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_directory = internal constant %struct.kernel_param { ptr @__param_str_directory, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @directory } }, section "__param", align 4
@__UNIQUE_ID_directorytype185 = internal constant [31 x i8] c"redboot.parmtype=directory:int\00", section ".modinfo", align 1
@__initcall__kmod_redboot__186_316_redboot_parser_init6 = internal global ptr @redboot_parser_init, section ".initcall6.init", align 4
@redboot_parser = internal global { %struct.mtd_part_parser, [36 x i8] } { %struct.mtd_part_parser { %struct.list_head zeroinitializer, ptr null, ptr @.str, ptr @mtd_parser_redboot_of_match_table, ptr @parse_redboot_partitions, ptr null }, [36 x i8] zeroinitializer }, align 32
@__exitcall_redboot_parser_exit = internal global ptr @redboot_parser_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias187 = internal constant [22 x i8] c"redboot.alias=RedBoot\00", section ".modinfo", align 1
@__UNIQUE_ID_file188 = internal constant [41 x i8] c"redboot.file=drivers/mtd/parsers/redboot\00", section ".modinfo", align 1
@__UNIQUE_ID_license189 = internal constant [20 x i8] c"redboot.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author190 = internal constant [53 x i8] c"redboot.author=David Woodhouse <dwmw2@infradead.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description191 = internal constant [77 x i8] c"redboot.description=Parsing code for RedBoot Flash Image System (FIS) tables\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RedBoot\00", [24 x i8] zeroinitializer }, align 32
@mtd_parser_redboot_of_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"redboot-fis\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@parse_redboot_partitions.nullstring = internal global { [12 x i8], [20 x i8] } { [12 x i8] c"unallocated\00", [20 x i8] zeroinitializer }, align 32
@parse_redboot_partitions._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\015Failed to find a non-bad block to check for RedBoot partition table\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"parse_redboot_partitions\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/mtd/parsers/redboot.c\00", [34 x i8] zeroinitializer }, align 32
@parse_redboot_partitions._entry_ptr = internal global ptr @parse_redboot_partitions._entry, section ".printk_index", align 4
@parse_redboot_partitions._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\015Searching for RedBoot partition table in %s at offset 0x%lx\0A\00", [33 x i8] zeroinitializer }, align 32
@parse_redboot_partitions._entry_ptr.6 = internal global ptr @parse_redboot_partitions._entry.4, section ".printk_index", align 4
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"FIS directory\00", [18 x i8] zeroinitializer }, align 32
@parse_redboot_partitions._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\015No RedBoot partition table detected in %s\0A\00", [51 x i8] zeroinitializer }, align 32
@parse_redboot_partitions._entry_ptr.10 = internal global ptr @parse_redboot_partitions._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RedBoot config\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"partitions\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fis-index-block\00", [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.14 = private unnamed_addr constant [10 x i8] c"directory\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 36, i32 12 }
@___asan_gen_.17 = private unnamed_addr constant [15 x i8] c"redboot_parser\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 311, i32 31 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 313, i32 10 }
@___asan_gen_.23 = private unnamed_addr constant [34 x i8] c"mtd_parser_redboot_of_match_table\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 305, i32 34 }
@___asan_gen_.26 = private unnamed_addr constant [11 x i8] c"nullstring\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 88, i32 14 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 98, i32 5 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 116, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 132, i32 28 }
@___asan_gen_.50 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 186, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 273, i32 22 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 56, i32 35 }
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.63 = private constant [33 x i8] c"../drivers/mtd/parsers/redboot.c\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 60, i32 36 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_alias187, ptr @__UNIQUE_ID_author190, ptr @__UNIQUE_ID_description191, ptr @__UNIQUE_ID_directorytype185, ptr @__UNIQUE_ID_file188, ptr @__UNIQUE_ID_license189, ptr @__exitcall_redboot_parser_exit, ptr @__initcall__kmod_redboot__186_316_redboot_parser_init6, ptr @__param_directory, ptr @parse_redboot_partitions._entry, ptr @parse_redboot_partitions._entry.4, ptr @parse_redboot_partitions._entry.8, ptr @parse_redboot_partitions._entry_ptr, ptr @parse_redboot_partitions._entry_ptr.10, ptr @parse_redboot_partitions._entry_ptr.6, ptr @redboot_parser_exit, ptr @directory, ptr @redboot_parser, ptr @.str, ptr @mtd_parser_redboot_of_match_table, ptr @parse_redboot_partitions.nullstring, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @directory to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @redboot_parser to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_parser_redboot_of_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_redboot_partitions.nullstring to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_redboot_partitions._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_redboot_partitions._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_redboot_partitions._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @redboot_parser_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__register_mtd_parser(ptr noundef nonnull @redboot_parser, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @redboot_parser_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @deregister_mtd_parser(ptr noundef nonnull @redboot_parser) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @deregister_mtd_parser(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_mtd_parser(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @parse_redboot_partitions(ptr noundef %master, ptr nocapture noundef writeonly %pparts, ptr noundef readonly %data) #2 align 64 {
entry:
  %dirblock.i = alloca i32, align 4
  %fl = alloca ptr, align 4
  %retlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fl)
  %0 = ptrtoint ptr %fl to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %fl, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen) #11
  %1 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %retlen, align 4, !annotation !57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dirblock.i) #11
  %2 = ptrtoint ptr %dirblock.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %dirblock.i, align 4, !annotation !57
  %of_node.i.i.i = getelementptr inbounds %struct.mtd_info, ptr %master, i32 0, i32 56, i32 27
  %3 = ptrtoint ptr %of_node.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node.i.i.i, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %entry.parse_redboot_of.exitthread-pre-split_crit_edge, label %if.end.i

entry.parse_redboot_of.exitthread-pre-split_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %parse_redboot_of.exitthread-pre-split

if.end.i:                                         ; preds = %entry
  %call1.i = tail call ptr @of_get_child_by_name(ptr noundef nonnull %4, ptr noundef nonnull @.str.12) #11
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i.parse_redboot_of.exitthread-pre-split_crit_edge, label %if.end4.i

if.end.i.parse_redboot_of.exitthread-pre-split_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %parse_redboot_of.exitthread-pre-split

if.end4.i:                                        ; preds = %if.end.i
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call1.i, ptr noundef nonnull @.str.13, ptr noundef nonnull %dirblock.i, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool6.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.parse_redboot_of.exitthread-pre-split_crit_edge

if.end4.i.parse_redboot_of.exitthread-pre-split_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %parse_redboot_of.exitthread-pre-split

if.end8.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %dirblock.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dirblock.i, align 4
  store i32 %6, ptr @directory, align 4
  br label %parse_redboot_of.exit

parse_redboot_of.exitthread-pre-split:            ; preds = %if.end4.i.parse_redboot_of.exitthread-pre-split_crit_edge, %if.end.i.parse_redboot_of.exitthread-pre-split_crit_edge, %entry.parse_redboot_of.exitthread-pre-split_crit_edge
  %.pr = load i32, ptr @directory, align 4
  br label %parse_redboot_of.exit

parse_redboot_of.exit:                            ; preds = %parse_redboot_of.exitthread-pre-split, %if.end8.i
  %7 = phi i32 [ %.pr, %parse_redboot_of.exitthread-pre-split ], [ %6, %if.end8.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dirblock.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %parse_redboot_of.exit
  %size = getelementptr inbounds %struct.mtd_info, ptr %master, i32 0, i32 2
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %size, align 8
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %master, i32 0, i32 3
  %10 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %erasesize, align 8
  %mul = mul i32 %11, %7
  %12 = trunc i64 %9 to i32
  %conv1 = add i32 %mul, %12
  %conv2550 = zext i32 %conv1 to i64
  %call551 = call i32 @mtd_block_isbad(ptr noundef %master, i64 noundef %conv2550) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call551)
  %tobool.not552 = icmp eq i32 %call551, 0
  br i1 %tobool.not552, label %if.then.if.end23_crit_edge, label %if.then.while.body_crit_edge

if.then.while.body_crit_edge:                     ; preds = %if.then
  br label %while.body

if.then.if.end23_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

while.body:                                       ; preds = %if.end.while.body_crit_edge, %if.then.while.body_crit_edge
  %offset.0553 = phi i32 [ %sub, %if.end.while.body_crit_edge ], [ %conv1, %if.then.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset.0553)
  %tobool3.not = icmp eq i32 %offset.0553, 0
  br i1 %tobool3.not, label %while.body.do.end_crit_edge, label %if.end

while.body.do.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %while.body13.do.end_crit_edge, %while.body.do.end_crit_edge
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #14
  br label %cleanup330

if.end:                                           ; preds = %while.body
  %13 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %erasesize, align 8
  %sub = sub i32 %offset.0553, %14
  %conv2 = zext i32 %sub to i64
  %call = call i32 @mtd_block_isbad(ptr noundef %master, i64 noundef %conv2) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.if.end23_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.else:                                          ; preds = %parse_redboot_of.exit
  %erasesize7 = getelementptr inbounds %struct.mtd_info, ptr %master, i32 0, i32 3
  %15 = ptrtoint ptr %erasesize7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %erasesize7, align 8
  %mul8 = mul i32 %16, %7
  %size17 = getelementptr inbounds %struct.mtd_info, ptr %master, i32 0, i32 2
  br label %while.cond9

while.cond9:                                      ; preds = %while.body13.while.cond9_crit_edge, %if.else
  %offset.1 = phi i32 [ %mul8, %if.else ], [ %add15, %while.body13.while.cond9_crit_edge ]
  %conv10 = zext i32 %offset.1 to i64
  %call11 = call i32 @mtd_block_isbad(ptr noundef %master, i64 noundef %conv10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %while.cond9.if.end23_crit_edge, label %while.body13

while.cond9.if.end23_crit_edge:                   ; preds = %while.cond9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

while.body13:                                     ; preds = %while.cond9
  %17 = ptrtoint ptr %erasesize7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %erasesize7, align 8
  %add15 = add i32 %18, %offset.1
  %conv16 = zext i32 %add15 to i64
  %19 = ptrtoint ptr %size17 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %size17, align 8
  %cmp18 = icmp eq i64 %20, %conv16
  br i1 %cmp18, label %while.body13.do.end_crit_edge, label %while.body13.while.cond9_crit_edge

while.body13.while.cond9_crit_edge:               ; preds = %while.body13
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond9

while.body13.do.end_crit_edge:                    ; preds = %while.body13
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end23:                                         ; preds = %while.cond9.if.end23_crit_edge, %if.end.if.end23_crit_edge, %if.then.if.end23_crit_edge
  %offset.2 = phi i32 [ %conv1, %if.then.if.end23_crit_edge ], [ %sub, %if.end.if.end23_crit_edge ], [ %offset.1, %while.cond9.if.end23_crit_edge ]
  %erasesize24 = getelementptr inbounds %struct.mtd_info, ptr %master, i32 0, i32 3
  %21 = ptrtoint ptr %erasesize24 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %erasesize24, align 8
  %call25 = call noalias ptr @vmalloc(i32 noundef %22) #15
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.end23.cleanup330_crit_edge, label %do.end31

if.end23.cleanup330_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup330

do.end31:                                         ; preds = %if.end23
  %name = getelementptr inbounds %struct.mtd_info, ptr %master, i32 0, i32 13
  %23 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name, align 8
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %24, i32 noundef %offset.2) #14
  %conv34 = zext i32 %offset.2 to i64
  %25 = ptrtoint ptr %erasesize24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %erasesize24, align 8
  %call36 = call i32 @mtd_read(ptr noundef %master, i64 noundef %conv34, i32 noundef %26, ptr noundef nonnull %retlen, ptr noundef nonnull %call25) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %do.end31.out_crit_edge

do.end31.out_crit_edge:                           ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end39:                                         ; preds = %do.end31
  %27 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %retlen, align 4
  %29 = ptrtoint ptr %erasesize24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %erasesize24, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp41.not = icmp eq i32 %28, %30
  br i1 %cmp41.not, label %if.end44, label %if.end39.out_crit_edge

if.end39.out_crit_edge:                           ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end44:                                         ; preds = %if.end39
  %div516 = lshr i32 %28, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %28)
  %cmp46554.not = icmp ult i32 %28, 256
  br i1 %cmp46554.not, label %if.end44.for.end114_crit_edge, label %for.body.preheader

if.end44.for.end114_crit_edge:                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end114

for.body.preheader:                               ; preds = %if.end44
  %umax = call i32 @llvm.umax.i32(i32 %div516, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc112.for.body_crit_edge, %for.body.preheader
  %i.0555 = phi i32 [ %inc113, %for.inc112.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.fis_image_desc, ptr %call25, i32 %i.0555
  %bcmp519 = call i32 @bcmp(ptr noundef dereferenceable(14) %arrayidx, ptr noundef nonnull dereferenceable(14) @.str.7, i32 14) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp519)
  %tobool50.not = icmp eq i32 %bcmp519, 0
  br i1 %tobool50.not, label %if.then51, label %for.inc112

if.then51:                                        ; preds = %for.body
  %size53 = getelementptr %struct.fis_image_desc, ptr %call25, i32 %i.0555, i32 3
  %31 = ptrtoint ptr %size53 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %size53, align 4
  %33 = call i32 @llvm.bswap.i32(i32 %32)
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %28)
  %cmp55 = icmp eq i32 %33, %28
  br i1 %cmp55, label %if.then51.if.then67_crit_edge, label %lor.lhs.false

if.then51.if.then67_crit_edge:                    ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then67

lor.lhs.false:                                    ; preds = %if.then51
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %28)
  %cmp60 = icmp ugt i32 %32, %28
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %28)
  %cmp65 = icmp ult i32 %33, %28
  %or.cond = select i1 %cmp60, i1 %cmp65, i1 false
  br i1 %or.cond, label %lor.lhs.false.if.then67_crit_edge, label %if.else99

lor.lhs.false.if.then67_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then67

if.then67:                                        ; preds = %lor.lhs.false.if.then67_crit_edge, %if.then51.if.then67_crit_edge
  %div70521 = lshr i32 %33, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %33)
  %cmp72557.not = icmp ult i32 %33, 256
  br i1 %cmp72557.not, label %if.then67.for.end114_crit_edge, label %for.body74.preheader

if.then67.for.end114_crit_edge:                   ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end114

for.body74.preheader:                             ; preds = %if.then67
  %umax601 = call i32 @llvm.umax.i32(i32 %div70521, i32 1)
  br label %for.body74

for.body74:                                       ; preds = %for.body74.backedge, %for.body74.preheader
  %j.0558 = phi i32 [ 0, %for.body74.preheader ], [ %j.0558.be, %for.body74.backedge ]
  %arrayidx75 = getelementptr %struct.fis_image_desc, ptr %call25, i32 %j.0558
  %34 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx75, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %35)
  %cmp79 = icmp eq i8 %35, -1
  br i1 %cmp79, label %if.then81, label %if.end90

if.then81:                                        ; preds = %for.body74
  %arrayidx84 = getelementptr [16 x i8], ptr %arrayidx75, i32 0, i32 1
  %36 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx84, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %37)
  %cmp86 = icmp eq i8 %37, -1
  %inc = add nuw nsw i32 %j.0558, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %umax601)
  %exitcond602.not = icmp eq i32 %inc, %umax601
  %or.cond609 = select i1 %cmp86, i1 true, i1 %exitcond602.not
  br i1 %or.cond609, label %if.then81.for.end114_crit_edge, label %if.then81.for.body74.backedge_crit_edge

if.then81.for.body74.backedge_crit_edge:          ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body74.backedge

if.then81.for.end114_crit_edge:                   ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end114

if.end90:                                         ; preds = %for.body74
  %flash_base = getelementptr %struct.fis_image_desc, ptr %call25, i32 %j.0558, i32 1
  %38 = ptrtoint ptr %flash_base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flash_base, align 4
  %40 = call i32 @llvm.bswap.i32(i32 %39) #11
  %41 = ptrtoint ptr %flash_base to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %flash_base, align 4
  %mem_base = getelementptr %struct.fis_image_desc, ptr %call25, i32 %j.0558, i32 2
  %42 = ptrtoint ptr %mem_base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mem_base, align 4
  %44 = call i32 @llvm.bswap.i32(i32 %43) #11
  %45 = ptrtoint ptr %mem_base to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %mem_base, align 4
  %size94 = getelementptr %struct.fis_image_desc, ptr %call25, i32 %j.0558, i32 3
  %46 = ptrtoint ptr %size94 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %size94, align 4
  %48 = call i32 @llvm.bswap.i32(i32 %47) #11
  %49 = ptrtoint ptr %size94 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %size94, align 4
  %entry_point = getelementptr %struct.fis_image_desc, ptr %call25, i32 %j.0558, i32 4
  %50 = ptrtoint ptr %entry_point to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %entry_point, align 4
  %52 = call i32 @llvm.bswap.i32(i32 %51) #11
  %53 = ptrtoint ptr %entry_point to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %entry_point, align 4
  %data_length = getelementptr %struct.fis_image_desc, ptr %call25, i32 %j.0558, i32 5
  %54 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %data_length, align 4
  %56 = call i32 @llvm.bswap.i32(i32 %55) #11
  %57 = ptrtoint ptr %data_length to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %data_length, align 4
  %desc_cksum = getelementptr %struct.fis_image_desc, ptr %call25, i32 %j.0558, i32 7
  %58 = ptrtoint ptr %desc_cksum to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %desc_cksum, align 4
  %60 = call i32 @llvm.bswap.i32(i32 %59) #11
  %61 = ptrtoint ptr %desc_cksum to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %desc_cksum, align 4
  %file_cksum = getelementptr %struct.fis_image_desc, ptr %call25, i32 %j.0558, i32 8
  %62 = ptrtoint ptr %file_cksum to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %file_cksum, align 4
  %64 = call i32 @llvm.bswap.i32(i32 %63) #11
  %65 = ptrtoint ptr %file_cksum to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %file_cksum, align 4
  %inc.old = add nuw nsw i32 %j.0558, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.old, i32 %umax601)
  %exitcond602.not.old = icmp eq i32 %inc.old, %umax601
  br i1 %exitcond602.not.old, label %if.end90.for.end114_crit_edge, label %if.end90.for.body74.backedge_crit_edge

if.end90.for.body74.backedge_crit_edge:           ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body74.backedge

if.end90.for.end114_crit_edge:                    ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end114

for.body74.backedge:                              ; preds = %if.end90.for.body74.backedge_crit_edge, %if.then81.for.body74.backedge_crit_edge
  %j.0558.be = phi i32 [ %inc.old, %if.end90.for.body74.backedge_crit_edge ], [ %inc, %if.then81.for.body74.backedge_crit_edge ]
  br label %for.body74

if.else99:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %28)
  %cmp103 = icmp ult i32 %32, %28
  %div108520 = lshr i32 %32, 8
  %spec.select = select i1 %cmp103, i32 %div108520, i32 %div516
  br label %for.end114

for.inc112:                                       ; preds = %for.body
  %inc113 = add nuw nsw i32 %i.0555, 1
  %exitcond.not = icmp eq i32 %inc113, %umax
  br i1 %exitcond.not, label %for.inc112.for.end114_crit_edge, label %for.inc112.for.body_crit_edge

for.inc112.for.body_crit_edge:                    ; preds = %for.inc112
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc112.for.end114_crit_edge:                  ; preds = %for.inc112
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end114

for.end114:                                       ; preds = %for.inc112.for.end114_crit_edge, %if.else99, %if.end90.for.end114_crit_edge, %if.then81.for.end114_crit_edge, %if.then67.for.end114_crit_edge, %if.end44.for.end114_crit_edge
  %i.0547 = phi i32 [ %i.0555, %if.else99 ], [ %i.0555, %if.then67.for.end114_crit_edge ], [ 0, %if.end44.for.end114_crit_edge ], [ %i.0555, %if.end90.for.end114_crit_edge ], [ %i.0555, %if.then81.for.end114_crit_edge ], [ %umax, %for.inc112.for.end114_crit_edge ]
  %numslots.0 = phi i32 [ %spec.select, %if.else99 ], [ %div70521, %if.then67.for.end114_crit_edge ], [ %div516, %if.end44.for.end114_crit_edge ], [ %div70521, %if.end90.for.end114_crit_edge ], [ %div70521, %if.then81.for.end114_crit_edge ], [ %div516, %for.inc112.for.end114_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0547, i32 %numslots.0)
  %cmp115 = icmp eq i32 %i.0547, %numslots.0
  br i1 %cmp115, label %do.end120, label %for.cond125.preheader

for.cond125.preheader:                            ; preds = %for.end114
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %numslots.0)
  %cmp126566 = icmp sgt i32 %numslots.0, 0
  br i1 %cmp126566, label %for.body128.lr.ph, label %for.cond125.preheader.for.end192_crit_edge

for.cond125.preheader.for.end192_crit_edge:       ; preds = %for.cond125.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end192

for.body128.lr.ph:                                ; preds = %for.cond125.preheader
  %tobool161.not = icmp eq ptr %data, null
  %size170 = getelementptr inbounds %struct.mtd_info, ptr %master, i32 0, i32 2
  br label %for.body128

do.end120:                                        ; preds = %for.end114
  call void @__sanitizer_cov_trace_pc() #13
  %66 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %name, align 8
  %call123 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %67) #14
  br label %out

for.body128:                                      ; preds = %for.inc190.for.body128_crit_edge, %for.body128.lr.ph
  %nrparts.0571 = phi i32 [ 0, %for.body128.lr.ph ], [ %nrparts.1.ph, %for.inc190.for.body128_crit_edge ]
  %namelen.0570 = phi i32 [ 0, %for.body128.lr.ph ], [ %namelen.1.ph, %for.inc190.for.body128_crit_edge ]
  %i.1567 = phi i32 [ 0, %for.body128.lr.ph ], [ %inc191, %for.inc190.for.body128_crit_edge ]
  %arrayidx129 = getelementptr %struct.fis_image_desc, ptr %call25, i32 %i.1567
  %68 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx129, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %69)
  %cmp133 = icmp eq i8 %69, -1
  br i1 %cmp133, label %if.then135, label %if.end144

if.then135:                                       ; preds = %for.body128
  %arrayidx138 = getelementptr [16 x i8], ptr %arrayidx129, i32 0, i32 1
  %70 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx138, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %71)
  %cmp140 = icmp eq i8 %71, -1
  br i1 %cmp140, label %if.then135.for.end192_crit_edge, label %if.then135.for.inc190_crit_edge

if.then135.for.inc190_crit_edge:                  ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc190

if.then135.for.end192_crit_edge:                  ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end192

if.end144:                                        ; preds = %for.body128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %72 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %72, i32 noundef 3264, i32 noundef 8) #17
  %call154 = call i32 @strlen(ptr noundef %arrayidx129) #16
  %add155 = add i32 %namelen.0570, 1
  %add156 = add i32 %add155, %call154
  %tobool157.not = icmp eq ptr %call7.i, null
  br i1 %tobool157.not, label %if.end144.out_crit_edge, label %if.end159

if.end144.out_crit_edge:                          ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end159:                                        ; preds = %if.end144
  %73 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %arrayidx129, ptr %call7.i, align 8
  br i1 %tobool161.not, label %if.end159.if.else169_crit_edge, label %land.lhs.true162

if.end159.if.else169_crit_edge:                   ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else169

land.lhs.true162:                                 ; preds = %if.end159
  %74 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool163.not = icmp eq i32 %75, 0
  br i1 %tobool163.not, label %land.lhs.true162.if.else169_crit_edge, label %if.then164

land.lhs.true162.if.else169_crit_edge:            ; preds = %land.lhs.true162
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else169

if.then164:                                       ; preds = %land.lhs.true162
  call void @__sanitizer_cov_trace_pc() #13
  %flash_base167 = getelementptr %struct.fis_image_desc, ptr %call25, i32 %i.1567, i32 1
  %76 = ptrtoint ptr %flash_base167 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %flash_base167, align 4
  %sub168 = sub i32 %77, %75
  store i32 %sub168, ptr %flash_base167, align 4
  br label %if.end176

if.else169:                                       ; preds = %land.lhs.true162.if.else169_crit_edge, %if.end159.if.else169_crit_edge
  %78 = ptrtoint ptr %size170 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %size170, align 8
  %flash_base173 = getelementptr %struct.fis_image_desc, ptr %call25, i32 %i.1567, i32 1
  %80 = ptrtoint ptr %flash_base173 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %flash_base173, align 4
  %82 = trunc i64 %79 to i32
  %83 = add i32 %82, -1
  %conv175 = and i32 %83, %81
  store i32 %conv175, ptr %flash_base173, align 4
  br label %if.end176

if.end176:                                        ; preds = %if.else169, %if.then164
  %84 = ptrtoint ptr %fl to i32
  call void @__asan_load4_noabort(i32 %84)
  %fl.0. = load ptr, ptr %fl, align 4
  %tobool178.not560 = icmp eq ptr %fl.0., null
  br i1 %tobool178.not560, label %if.end176.while.end186_crit_edge, label %land.rhs.lr.ph

if.end176.while.end186_crit_edge:                 ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end186

land.rhs.lr.ph:                                   ; preds = %if.end176
  %flash_base182 = getelementptr %struct.fis_image_desc, ptr %call25, i32 %i.1567, i32 1
  %85 = ptrtoint ptr %flash_base182 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %flash_base182, align 4
  %87 = ptrtoint ptr %fl.0. to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %fl.0., align 4
  %flash_base180615 = getelementptr inbounds %struct.fis_image_desc, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %flash_base180615 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %flash_base180615, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %86)
  %cmp183616 = icmp ult i32 %90, %86
  br i1 %cmp183616, label %land.rhs.lr.ph.while.body185_crit_edge, label %land.rhs.lr.ph.while.end186_crit_edge

land.rhs.lr.ph.while.end186_crit_edge:            ; preds = %land.rhs.lr.ph
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end186

land.rhs.lr.ph.while.body185_crit_edge:           ; preds = %land.rhs.lr.ph
  br label %while.body185

land.rhs:                                         ; preds = %while.body185
  %91 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %97, align 4
  %flash_base180 = getelementptr inbounds %struct.fis_image_desc, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %flash_base180 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %flash_base180, align 4
  %cmp183 = icmp ult i32 %94, %86
  br i1 %cmp183, label %land.rhs.while.body185_crit_edge, label %land.rhs.while.end186.loopexit_crit_edge

land.rhs.while.end186.loopexit_crit_edge:         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end186.loopexit

land.rhs.while.body185_crit_edge:                 ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body185

while.body185:                                    ; preds = %land.rhs.while.body185_crit_edge, %land.rhs.lr.ph.while.body185_crit_edge
  %95 = phi ptr [ %97, %land.rhs.while.body185_crit_edge ], [ %fl.0., %land.rhs.lr.ph.while.body185_crit_edge ]
  %next = getelementptr inbounds %struct.fis_list, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %next, align 4
  %tobool178.not = icmp eq ptr %97, null
  br i1 %tobool178.not, label %while.body185.while.end186.loopexit_crit_edge, label %land.rhs

while.body185.while.end186.loopexit_crit_edge:    ; preds = %while.body185
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end186.loopexit

while.end186.loopexit:                            ; preds = %while.body185.while.end186.loopexit_crit_edge, %land.rhs.while.end186.loopexit_crit_edge
  %.lcssa.ph = phi ptr [ %97, %land.rhs.while.end186.loopexit_crit_edge ], [ null, %while.body185.while.end186.loopexit_crit_edge ]
  %next.le = getelementptr inbounds %struct.fis_list, ptr %95, i32 0, i32 1
  br label %while.end186

while.end186:                                     ; preds = %while.end186.loopexit, %land.rhs.lr.ph.while.end186_crit_edge, %if.end176.while.end186_crit_edge
  %prev.0.lcssa = phi ptr [ %fl, %if.end176.while.end186_crit_edge ], [ %fl, %land.rhs.lr.ph.while.end186_crit_edge ], [ %next.le, %while.end186.loopexit ]
  %.lcssa = phi ptr [ null, %if.end176.while.end186_crit_edge ], [ %fl.0., %land.rhs.lr.ph.while.end186_crit_edge ], [ %.lcssa.ph, %while.end186.loopexit ]
  %next187 = getelementptr inbounds %struct.fis_list, ptr %call7.i, i32 0, i32 1
  %98 = ptrtoint ptr %next187 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %.lcssa, ptr %next187, align 4
  %99 = ptrtoint ptr %prev.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call7.i, ptr %prev.0.lcssa, align 4
  %inc188 = add i32 %nrparts.0571, 1
  br label %for.inc190

for.inc190:                                       ; preds = %while.end186, %if.then135.for.inc190_crit_edge
  %namelen.1.ph = phi i32 [ %namelen.0570, %if.then135.for.inc190_crit_edge ], [ %add156, %while.end186 ]
  %nrparts.1.ph = phi i32 [ %nrparts.0571, %if.then135.for.inc190_crit_edge ], [ %inc188, %while.end186 ]
  %inc191 = add nuw nsw i32 %i.1567, 1
  %exitcond603.not = icmp eq i32 %inc191, %numslots.0
  br i1 %exitcond603.not, label %for.inc190.for.end192_crit_edge, label %for.inc190.for.body128_crit_edge

for.inc190.for.body128_crit_edge:                 ; preds = %for.inc190
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body128

for.inc190.for.end192_crit_edge:                  ; preds = %for.inc190
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end192

for.end192:                                       ; preds = %for.inc190.for.end192_crit_edge, %if.then135.for.end192_crit_edge, %for.cond125.preheader.for.end192_crit_edge
  %namelen.0.lcssa = phi i32 [ 0, %for.cond125.preheader.for.end192_crit_edge ], [ %namelen.0570, %if.then135.for.end192_crit_edge ], [ %namelen.1.ph, %for.inc190.for.end192_crit_edge ]
  %nrparts.0.lcssa = phi i32 [ 0, %for.cond125.preheader.for.end192_crit_edge ], [ %nrparts.0571, %if.then135.for.end192_crit_edge ], [ %nrparts.1.ph, %for.inc190.for.end192_crit_edge ]
  %100 = ptrtoint ptr %fl to i32
  call void @__asan_load4_noabort(i32 %100)
  %fl.0.fl.0.fl.0. = load ptr, ptr %fl, align 4
  %101 = ptrtoint ptr %fl.0.fl.0.fl.0. to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %fl.0.fl.0.fl.0., align 4
  %flash_base194 = getelementptr inbounds %struct.fis_image_desc, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %flash_base194 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %flash_base194, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool195.not = icmp eq i32 %104, 0
  %spec.select522 = select i1 %tobool195.not, i32 0, i32 12
  %not.tobool195.not = xor i1 %tobool195.not, true
  %inc197 = zext i1 %not.tobool195.not to i32
  %spec.select523 = add i32 %nrparts.0.lcssa, %inc197
  %next200577 = getelementptr inbounds %struct.fis_list, ptr %fl.0.fl.0.fl.0., i32 0, i32 1
  %105 = ptrtoint ptr %next200577 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %next200577, align 4
  %tobool201.not578 = icmp eq ptr %106, null
  br i1 %tobool201.not578, label %for.end192.if.end8.i.i_crit_edge, label %for.body202.lr.ph

for.end192.if.end8.i.i_crit_edge:                 ; preds = %for.end192
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i

for.body202.lr.ph:                                ; preds = %for.end192
  %107 = ptrtoint ptr %erasesize24 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %erasesize24, align 8
  br label %for.body202

for.body202:                                      ; preds = %for.body202.for.body202_crit_edge, %for.body202.lr.ph
  %109 = phi ptr [ %106, %for.body202.lr.ph ], [ %122, %for.body202.for.body202_crit_edge ]
  %next200582 = phi ptr [ %next200577, %for.body202.lr.ph ], [ %next200, %for.body202.for.body202_crit_edge ]
  %tmp_fl.0581 = phi ptr [ %fl.0.fl.0.fl.0., %for.body202.lr.ph ], [ %tmp_fl.0, %for.body202.for.body202_crit_edge ]
  %nrparts.4580 = phi i32 [ %spec.select523, %for.body202.lr.ph ], [ %spec.select525, %for.body202.for.body202_crit_edge ]
  %nulllen.1579 = phi i32 [ %spec.select522, %for.body202.lr.ph ], [ %spec.select524, %for.body202.for.body202_crit_edge ]
  %110 = ptrtoint ptr %tmp_fl.0581 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %tmp_fl.0581, align 4
  %flash_base204 = getelementptr inbounds %struct.fis_image_desc, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %flash_base204 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %flash_base204, align 4
  %size206 = getelementptr inbounds %struct.fis_image_desc, ptr %111, i32 0, i32 3
  %114 = ptrtoint ptr %size206 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %size206, align 4
  %add207 = add i32 %115, %113
  %add209 = add i32 %add207, %108
  %116 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %109, align 4
  %flash_base212 = getelementptr inbounds %struct.fis_image_desc, ptr %117, i32 0, i32 1
  %118 = ptrtoint ptr %flash_base212 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %flash_base212, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add209, i32 %119)
  %cmp213.not = icmp ugt i32 %add209, %119
  %spec.select524 = select i1 %cmp213.not, i32 %nulllen.1579, i32 12
  %not.cmp213.not = xor i1 %cmp213.not, true
  %inc216 = zext i1 %not.cmp213.not to i32
  %spec.select525 = add i32 %nrparts.4580, %inc216
  %120 = ptrtoint ptr %next200582 to i32
  call void @__asan_load4_noabort(i32 %120)
  %tmp_fl.0 = load ptr, ptr %next200582, align 4
  %next200 = getelementptr inbounds %struct.fis_list, ptr %tmp_fl.0, i32 0, i32 1
  %121 = ptrtoint ptr %next200 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %next200, align 4
  %tobool201.not = icmp eq ptr %122, null
  br i1 %tobool201.not, label %for.body202.if.end8.i.i_crit_edge, label %for.body202.for.body202_crit_edge

for.body202.for.body202_crit_edge:                ; preds = %for.body202
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body202

for.body202.if.end8.i.i_crit_edge:                ; preds = %for.body202
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %for.body202.if.end8.i.i_crit_edge, %for.end192.if.end8.i.i_crit_edge
  %nulllen.1.lcssa = phi i32 [ %spec.select522, %for.end192.if.end8.i.i_crit_edge ], [ %spec.select524, %for.body202.if.end8.i.i_crit_edge ]
  %nrparts.4.lcssa = phi i32 [ %spec.select523, %for.end192.if.end8.i.i_crit_edge ], [ %spec.select525, %for.body202.if.end8.i.i_crit_edge ]
  %add222 = add i32 %nulllen.1.lcssa, %namelen.0.lcssa
  %mul221 = mul i32 %nrparts.4.lcssa, 40
  %add223 = add i32 %add222, %mul221
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add223, i32 noundef 3520) #15
  %tobool225.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool225.not, label %if.end8.i.i.out_crit_edge, label %if.end227

if.end8.i.i.out_crit_edge:                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end227:                                        ; preds = %if.end8.i.i
  %arrayidx228 = getelementptr %struct.mtd_partition, ptr %call9.i.i, i32 %nrparts.4.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nulllen.1.lcssa)
  %cmp229 = icmp sgt i32 %nulllen.1.lcssa, 0
  br i1 %cmp229, label %if.then231, label %if.end227.if.end233_crit_edge

if.end227.if.end233_crit_edge:                    ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end233

if.then231:                                       ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #13
  %call232 = call ptr @strcpy(ptr noundef %arrayidx228, ptr noundef nonnull @parse_redboot_partitions.nullstring) #16
  br label %if.end233

if.end233:                                        ; preds = %if.then231, %if.end227.if.end233_crit_edge
  %add.ptr = getelementptr i8, ptr %arrayidx228, i32 %nulllen.1.lcssa
  %123 = ptrtoint ptr %fl.0.fl.0.fl.0. to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %fl.0.fl.0.fl.0., align 4
  %flash_base235 = getelementptr inbounds %struct.fis_image_desc, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %flash_base235 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %flash_base235, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool236.not = icmp eq i32 %126, 0
  br i1 %tobool236.not, label %if.end233.if.end248_crit_edge, label %if.then237

if.end233.if.end248_crit_edge:                    ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end248

if.then237:                                       ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #13
  %127 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %arrayidx228, ptr %call9.i.i, align 128
  %128 = ptrtoint ptr %fl.0.fl.0.fl.0. to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %fl.0.fl.0.fl.0., align 4
  %flash_base241 = getelementptr inbounds %struct.fis_image_desc, ptr %129, i32 0, i32 1
  %130 = ptrtoint ptr %flash_base241 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %flash_base241, align 4
  %conv242 = zext i32 %131 to i64
  %size244 = getelementptr inbounds %struct.mtd_partition, ptr %call9.i.i, i32 0, i32 2
  %132 = ptrtoint ptr %size244 to i32
  call void @__asan_store8_noabort(i32 %132)
  store i64 %conv242, ptr %size244, align 8
  %offset246 = getelementptr inbounds %struct.mtd_partition, ptr %call9.i.i, i32 0, i32 3
  %133 = ptrtoint ptr %offset246 to i32
  call void @__asan_store8_noabort(i32 %133)
  store i64 0, ptr %offset246, align 16
  br label %if.end248

if.end248:                                        ; preds = %if.then237, %if.end233.if.end248_crit_edge
  %i.2 = phi i32 [ 1, %if.then237 ], [ 0, %if.end233.if.end248_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.2, i32 %nrparts.4.lcssa)
  %cmp250585 = icmp slt i32 %i.2, %nrparts.4.lcssa
  br i1 %cmp250585, label %for.body252.preheader, label %if.end248.for.end324_crit_edge

if.end248.for.end324_crit_edge:                   ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end324

for.body252.preheader:                            ; preds = %if.end248
  %134 = ptrtoint ptr %fl to i32
  call void @__asan_load4_noabort(i32 %134)
  %fl.promoted = load ptr, ptr %fl, align 4
  br label %for.body252

for.body252:                                      ; preds = %if.end320.for.body252_crit_edge, %for.body252.preheader
  %135 = phi ptr [ %176, %if.end320.for.body252_crit_edge ], [ %fl.promoted, %for.body252.preheader ]
  %names.0588 = phi ptr [ %add.ptr282, %if.end320.for.body252_crit_edge ], [ %add.ptr, %for.body252.preheader ]
  %i.3586 = phi i32 [ %inc323, %if.end320.for.body252_crit_edge ], [ %i.2, %for.body252.preheader ]
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %135, align 4
  %size254 = getelementptr inbounds %struct.fis_image_desc, ptr %137, i32 0, i32 3
  %138 = ptrtoint ptr %size254 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %size254, align 4
  %conv255 = zext i32 %139 to i64
  %arrayidx256 = getelementptr %struct.mtd_partition, ptr %call9.i.i, i32 %i.3586
  %size257 = getelementptr %struct.mtd_partition, ptr %call9.i.i, i32 %i.3586, i32 2
  %140 = ptrtoint ptr %size257 to i32
  call void @__asan_store8_noabort(i32 %140)
  store i64 %conv255, ptr %size257, align 8
  %141 = load ptr, ptr %135, align 4
  %flash_base259 = getelementptr inbounds %struct.fis_image_desc, ptr %141, i32 0, i32 1
  %142 = ptrtoint ptr %flash_base259 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %flash_base259, align 4
  %conv260 = zext i32 %143 to i64
  %offset262 = getelementptr %struct.mtd_partition, ptr %call9.i.i, i32 %i.3586, i32 3
  %144 = ptrtoint ptr %offset262 to i32
  call void @__asan_store8_noabort(i32 %144)
  store i64 %conv260, ptr %offset262, align 8
  %145 = ptrtoint ptr %arrayidx256 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %names.0588, ptr %arrayidx256, align 8
  %146 = load ptr, ptr %135, align 4
  %call268 = call ptr @strcpy(ptr noundef %names.0588, ptr noundef %146) #16
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(8) %names.0588, ptr noundef nonnull dereferenceable(8) @.str, i32 8) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool270.not = icmp eq i32 %bcmp, 0
  br i1 %tobool270.not, label %for.body252.if.then277_crit_edge, label %lor.lhs.false271

for.body252.if.then277_crit_edge:                 ; preds = %for.body252
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then277

lor.lhs.false271:                                 ; preds = %for.body252
  %bcmp517 = call i32 @bcmp(ptr noundef dereferenceable(15) %names.0588, ptr noundef nonnull dereferenceable(15) @.str.11, i32 15) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp517)
  %tobool273.not = icmp eq i32 %bcmp517, 0
  br i1 %tobool273.not, label %lor.lhs.false271.if.then277_crit_edge, label %lor.lhs.false274

lor.lhs.false271.if.then277_crit_edge:            ; preds = %lor.lhs.false271
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then277

lor.lhs.false274:                                 ; preds = %lor.lhs.false271
  %bcmp518 = call i32 @bcmp(ptr noundef dereferenceable(14) %names.0588, ptr noundef nonnull dereferenceable(14) @.str.7, i32 14) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp518)
  %tobool276.not = icmp eq i32 %bcmp518, 0
  br i1 %tobool276.not, label %lor.lhs.false274.if.then277_crit_edge, label %lor.lhs.false274.if.end279_crit_edge

lor.lhs.false274.if.end279_crit_edge:             ; preds = %lor.lhs.false274
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end279

lor.lhs.false274.if.then277_crit_edge:            ; preds = %lor.lhs.false274
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then277

if.then277:                                       ; preds = %lor.lhs.false274.if.then277_crit_edge, %lor.lhs.false271.if.then277_crit_edge, %for.body252.if.then277_crit_edge
  %mask_flags = getelementptr %struct.mtd_partition, ptr %call9.i.i, i32 %i.3586, i32 4
  %147 = ptrtoint ptr %mask_flags to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 1024, ptr %mask_flags, align 8
  br label %if.end279

if.end279:                                        ; preds = %if.then277, %lor.lhs.false274.if.end279_crit_edge
  %call280 = call i32 @strlen(ptr noundef %names.0588) #16
  %add281 = add i32 %call280, 1
  %add.ptr282 = getelementptr i8, ptr %names.0588, i32 %add281
  %next283 = getelementptr inbounds %struct.fis_list, ptr %135, i32 0, i32 1
  %148 = ptrtoint ptr %next283 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %next283, align 4
  %tobool284.not = icmp eq ptr %149, null
  br i1 %tobool284.not, label %if.end279.if.end320_crit_edge, label %land.lhs.true285

if.end279.if.end320_crit_edge:                    ; preds = %if.end279
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end320

land.lhs.true285:                                 ; preds = %if.end279
  %150 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %135, align 4
  %flash_base287 = getelementptr inbounds %struct.fis_image_desc, ptr %151, i32 0, i32 1
  %152 = ptrtoint ptr %flash_base287 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %flash_base287, align 4
  %size289 = getelementptr inbounds %struct.fis_image_desc, ptr %151, i32 0, i32 3
  %154 = ptrtoint ptr %size289 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %size289, align 4
  %add290 = add i32 %155, %153
  %156 = ptrtoint ptr %erasesize24 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %erasesize24, align 8
  %add292 = add i32 %add290, %157
  %158 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %149, align 4
  %flash_base295 = getelementptr inbounds %struct.fis_image_desc, ptr %159, i32 0, i32 1
  %160 = ptrtoint ptr %flash_base295 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %flash_base295, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add292, i32 %161)
  %cmp296.not = icmp ugt i32 %add292, %161
  br i1 %cmp296.not, label %land.lhs.true285.if.end320_crit_edge, label %if.then298

land.lhs.true285.if.end320_crit_edge:             ; preds = %land.lhs.true285
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end320

if.then298:                                       ; preds = %land.lhs.true285
  call void @__sanitizer_cov_trace_pc() #13
  %inc299 = add nsw i32 %i.3586, 1
  %162 = ptrtoint ptr %size257 to i32
  call void @__asan_load8_noabort(i32 %162)
  %163 = load i64, ptr %size257, align 8
  %164 = ptrtoint ptr %offset262 to i32
  call void @__asan_load8_noabort(i32 %164)
  %165 = load i64, ptr %offset262, align 8
  %add306 = add i64 %165, %163
  %arrayidx307 = getelementptr %struct.mtd_partition, ptr %call9.i.i, i32 %inc299
  %offset308 = getelementptr %struct.mtd_partition, ptr %call9.i.i, i32 %inc299, i32 3
  %166 = ptrtoint ptr %offset308 to i32
  call void @__asan_store8_noabort(i32 %166)
  store i64 %add306, ptr %offset308, align 8
  %167 = ptrtoint ptr %next283 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %next283, align 4
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %168, align 4
  %flash_base311 = getelementptr inbounds %struct.fis_image_desc, ptr %170, i32 0, i32 1
  %171 = ptrtoint ptr %flash_base311 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %flash_base311, align 4
  %conv312 = zext i32 %172 to i64
  %sub315 = sub i64 %conv312, %add306
  %size317 = getelementptr %struct.mtd_partition, ptr %call9.i.i, i32 %inc299, i32 2
  %173 = ptrtoint ptr %size317 to i32
  call void @__asan_store8_noabort(i32 %173)
  store i64 %sub315, ptr %size317, align 8
  %174 = ptrtoint ptr %arrayidx307 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %arrayidx228, ptr %arrayidx307, align 8
  br label %if.end320

if.end320:                                        ; preds = %if.then298, %land.lhs.true285.if.end320_crit_edge, %if.end279.if.end320_crit_edge
  %i.4 = phi i32 [ %inc299, %if.then298 ], [ %i.3586, %land.lhs.true285.if.end320_crit_edge ], [ %i.3586, %if.end279.if.end320_crit_edge ]
  %175 = ptrtoint ptr %next283 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %next283, align 4
  call void @kfree(ptr noundef %135) #11
  %inc323 = add i32 %i.4, 1
  %cmp250 = icmp slt i32 %inc323, %nrparts.4.lcssa
  br i1 %cmp250, label %if.end320.for.body252_crit_edge, label %for.end324.loopexit

if.end320.for.body252_crit_edge:                  ; preds = %if.end320
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body252

for.end324.loopexit:                              ; preds = %if.end320
  call void @__sanitizer_cov_trace_pc() #13
  %177 = ptrtoint ptr %fl to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %176, ptr %fl, align 4
  br label %for.end324

for.end324:                                       ; preds = %for.end324.loopexit, %if.end248.for.end324_crit_edge
  %178 = ptrtoint ptr %pparts to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %call9.i.i, ptr %pparts, align 4
  br label %out

out:                                              ; preds = %for.end324, %if.end8.i.i.out_crit_edge, %if.end144.out_crit_edge, %do.end120, %if.end39.out_crit_edge, %do.end31.out_crit_edge
  %ret.2 = phi i32 [ %call36, %do.end31.out_crit_edge ], [ 0, %do.end120 ], [ %nrparts.4.lcssa, %for.end324 ], [ -5, %if.end39.out_crit_edge ], [ -12, %if.end8.i.i.out_crit_edge ], [ -12, %if.end144.out_crit_edge ]
  %179 = ptrtoint ptr %fl to i32
  call void @__asan_load4_noabort(i32 %179)
  %fl.0.fl.0.fl.0.505.pr = load ptr, ptr %fl, align 4
  %tobool326.not592 = icmp eq ptr %fl.0.fl.0.fl.0.505.pr, null
  br i1 %tobool326.not592, label %out.while.end329_crit_edge, label %out.while.body327_crit_edge

out.while.body327_crit_edge:                      ; preds = %out
  br label %while.body327

out.while.end329_crit_edge:                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end329

while.body327:                                    ; preds = %while.body327.while.body327_crit_edge, %out.while.body327_crit_edge
  %fl.0.fl.0.505593 = phi ptr [ %181, %while.body327.while.body327_crit_edge ], [ %fl.0.fl.0.fl.0.505.pr, %out.while.body327_crit_edge ]
  %next328 = getelementptr inbounds %struct.fis_list, ptr %fl.0.fl.0.505593, i32 0, i32 1
  %180 = ptrtoint ptr %next328 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %next328, align 4
  call void @kfree(ptr noundef nonnull %fl.0.fl.0.505593) #11
  %tobool326.not = icmp eq ptr %181, null
  br i1 %tobool326.not, label %while.body327.while.end329_crit_edge, label %while.body327.while.body327_crit_edge

while.body327.while.body327_crit_edge:            ; preds = %while.body327
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body327

while.body327.while.end329_crit_edge:             ; preds = %while.body327
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end329

while.end329:                                     ; preds = %while.body327.while.end329_crit_edge, %out.while.end329_crit_edge
  call void @vfree(ptr noundef nonnull %call25) #11
  br label %cleanup330

cleanup330:                                       ; preds = %while.end329, %if.end23.cleanup330_crit_edge, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ %ret.2, %while.end329 ], [ -12, %if.end23.cleanup330_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fl)
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_block_isbad(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_read(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nobuiltin }
attributes #17 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !13, !15, !16, !18, !20, !22, !24, !26, !28, !29, !30, !31, !32, !34, !35, !36, !38, !40, !41, !42, !44, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @__param_directory, !1, !"__param_directory", i1 false, i1 false}
!1 = !{!"../drivers/mtd/parsers/redboot.c", i32 37, i32 1}
!2 = !{ptr @__UNIQUE_ID_directorytype185, !1, !"__UNIQUE_ID_directorytype185", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_redboot__186_316_redboot_parser_init6, !4, !"__initcall__kmod_redboot__186_316_redboot_parser_init6", i1 false, i1 false}
!4 = !{!"../drivers/mtd/parsers/redboot.c", i32 316, i32 1}
!5 = !{ptr @__exitcall_redboot_parser_exit, !4, !"__exitcall_redboot_parser_exit", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_alias187, !7, !"__UNIQUE_ID_alias187", i1 false, i1 false}
!7 = !{!"../drivers/mtd/parsers/redboot.c", i32 319, i32 1}
!8 = !{ptr @__UNIQUE_ID_file188, !9, !"__UNIQUE_ID_file188", i1 false, i1 false}
!9 = !{!"../drivers/mtd/parsers/redboot.c", i32 320, i32 1}
!10 = !{ptr @__UNIQUE_ID_license189, !9, !"__UNIQUE_ID_license189", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_author190, !12, !"__UNIQUE_ID_author190", i1 false, i1 false}
!12 = !{!"../drivers/mtd/parsers/redboot.c", i32 321, i32 1}
!13 = !{ptr @__UNIQUE_ID_description191, !14, !"__UNIQUE_ID_description191", i1 false, i1 false}
!14 = !{!"../drivers/mtd/parsers/redboot.c", i32 322, i32 1}
!15 = !{ptr @__param_str_directory, !1, !"__param_str_directory", i1 false, i1 false}
!16 = !{ptr @directory, !17, !"directory", i1 false, i1 false}
!17 = !{!"../drivers/mtd/parsers/redboot.c", i32 36, i32 12}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mtd/parsers/redboot.c", i32 313, i32 10}
!20 = !{ptr @redboot_parser, !21, !"redboot_parser", i1 false, i1 false}
!21 = !{!"../drivers/mtd/parsers/redboot.c", i32 311, i32 31}
!22 = !{ptr @mtd_parser_redboot_of_match_table, !23, !"mtd_parser_redboot_of_match_table", i1 false, i1 false}
!23 = !{!"../drivers/mtd/parsers/redboot.c", i32 305, i32 34}
!24 = !{ptr @parse_redboot_partitions.nullstring, !25, !"nullstring", i1 false, i1 false}
!25 = !{!"../drivers/mtd/parsers/redboot.c", i32 88, i32 14}
!26 = !{ptr @.str.1, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mtd/parsers/redboot.c", i32 98, i32 5}
!28 = !{ptr @.str.2, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @parse_redboot_partitions._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @parse_redboot_partitions._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mtd/parsers/redboot.c", i32 116, i32 2}
!34 = !{ptr @parse_redboot_partitions._entry.4, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @parse_redboot_partitions._entry_ptr.6, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.7, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mtd/parsers/redboot.c", i32 132, i32 28}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mtd/parsers/redboot.c", i32 186, i32 3}
!40 = !{ptr @parse_redboot_partitions._entry.8, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @parse_redboot_partitions._entry_ptr.10, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mtd/parsers/redboot.c", i32 273, i32 22}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mtd/parsers/redboot.c", i32 56, i32 35}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mtd/parsers/redboot.c", i32 60, i32 36}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{!"auto-init"}
