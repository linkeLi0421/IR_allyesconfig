; ModuleID = '/llk/IR_all_yes/drivers/mtd/parsers/parser_imagetag.c_pt.bc'
source_filename = "../drivers/mtd/parsers/parser_imagetag.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mtd_part_parser = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bcm_tag = type { [4 x i8], [20 x i8], [14 x i8], [6 x i8], [16 x i8], [2 x i8], [10 x i8], [12 x i8], [10 x i8], [12 x i8], [10 x i8], [12 x i8], [10 x i8], [4 x i8], [20 x i8], [30 x i8], [4 x i8], i32, [16 x i8], i32, i32, i32, [8 x i8], i32, [16 x i8] }
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

@__initcall__kmod_parser_imagetag__185_214_bcm963xx_imagetag_parser_init6 = internal global ptr @bcm963xx_imagetag_parser_init, section ".initcall6.init", align 4
@bcm963xx_imagetag_parser = internal global { %struct.mtd_part_parser, [36 x i8] } { %struct.mtd_part_parser { %struct.list_head zeroinitializer, ptr null, ptr @.str, ptr @parse_bcm963xx_imagetag_match_table, ptr @bcm963xx_parse_imagetag_partitions, ptr null }, [36 x i8] zeroinitializer }, align 32
@__exitcall_bcm963xx_imagetag_parser_exit = internal global ptr @bcm963xx_imagetag_parser_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file186 = internal constant [57 x i8] c"parser_imagetag.file=drivers/mtd/parsers/parser_imagetag\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [28 x i8] c"parser_imagetag.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author188 = internal constant [72 x i8] c"parser_imagetag.author=Daniel Dickinson <openwrt@cshore.neomailbox.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_author189 = internal constant [62 x i8] c"parser_imagetag.author=Florian Fainelli <florian@openwrt.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author190 = internal constant [55 x i8] c"parser_imagetag.author=Mike Albon <malbon@openwrt.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author191 = internal constant [61 x i8] c"parser_imagetag.author=Jonas Gorski <jonas.gorski@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description192 = internal constant [77 x i8] c"parser_imagetag.description=MTD parser for BCM963XX CFE Image Tag partitions\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bcm963xx-imagetag\00", [46 x i8] zeroinitializer }, align 32
@parse_bcm963xx_imagetag_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm963xx-imagetag\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rootfs\00", [25 x i8] zeroinitializer }, align 32
@bcm963xx_parse_imagetag_partitions._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 85, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013parser_imagetag: invalid rootfs address: %*ph\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"bcm963xx_parse_imagetag_partitions\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/mtd/parsers/parser_imagetag.c\00", [58 x i8] zeroinitializer }, align 32
@bcm963xx_parse_imagetag_partitions._entry_ptr = internal global ptr @bcm963xx_parse_imagetag_partitions._entry, section ".printk_index", align 4
@bcm963xx_parse_imagetag_partitions._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013parser_imagetag: invalid kernel address: %*ph\0A\00", [47 x i8] zeroinitializer }, align 32
@bcm963xx_parse_imagetag_partitions._entry_ptr.7 = internal global ptr @bcm963xx_parse_imagetag_partitions._entry.5, section ".printk_index", align 4
@bcm963xx_parse_imagetag_partitions._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013parser_imagetag: invalid kernel length: %*ph\0A\00", [48 x i8] zeroinitializer }, align 32
@bcm963xx_parse_imagetag_partitions._entry_ptr.10 = internal global ptr @bcm963xx_parse_imagetag_partitions._entry.8, section ".printk_index", align 4
@bcm963xx_parse_imagetag_partitions._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013parser_imagetag: invalid total length: %*ph\0A\00", [49 x i8] zeroinitializer }, align 32
@bcm963xx_parse_imagetag_partitions._entry_ptr.13 = internal global ptr @bcm963xx_parse_imagetag_partitions._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"kernel\00", [25 x i8] zeroinitializer }, align 32
@bcm963xx_parse_imagetag_partitions._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\016parser_imagetag: Partition %d is %s offset %llx and length %llx\0A\00", [61 x i8] zeroinitializer }, align 32
@bcm963xx_parse_imagetag_partitions._entry_ptr.17 = internal global ptr @bcm963xx_parse_imagetag_partitions._entry.15, section ".printk_index", align 4
@bcm963xx_parse_imagetag_partitions._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016parser_imagetag: Spare partition is offset %x and length %x\0A\00", [33 x i8] zeroinitializer }, align 32
@bcm963xx_parse_imagetag_partitions._entry_ptr.20 = internal global ptr @bcm963xx_parse_imagetag_partitions._entry.18, section ".printk_index", align 4
@bcm963xx_read_imagetag._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 49, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\016parser_imagetag: %s: CFE image tag found at 0x%llx with version %s, board type %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bcm963xx_read_imagetag\00", [41 x i8] zeroinitializer }, align 32
@bcm963xx_read_imagetag._entry_ptr = internal global ptr @bcm963xx_read_imagetag._entry, section ".printk_index", align 4
@bcm963xx_read_imagetag._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.4, i32 55, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\014parser_imagetag: %s: CFE image tag at 0x%llx CRC invalid (expected %08x, actual %08x)\0A\00", [39 x i8] zeroinitializer }, align 32
@bcm963xx_read_imagetag._entry_ptr.25 = internal global ptr @bcm963xx_read_imagetag._entry.23, section ".printk_index", align 4
@___asan_gen_.26 = private unnamed_addr constant [25 x i8] c"bcm963xx_imagetag_parser\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 209, i32 31 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 211, i32 10 }
@___asan_gen_.32 = private unnamed_addr constant [36 x i8] c"parse_bcm963xx_imagetag_match_table\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 203, i32 34 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 78, i32 39 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 83, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 93, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 102, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 111, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 165, i32 28 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 185, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 188, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 48, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.96 = private constant [41 x i8] c"../drivers/mtd/parsers/parser_imagetag.c\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 54, i32 2 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID_author188, ptr @__UNIQUE_ID_author189, ptr @__UNIQUE_ID_author190, ptr @__UNIQUE_ID_author191, ptr @__UNIQUE_ID_description192, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_license187, ptr @__exitcall_bcm963xx_imagetag_parser_exit, ptr @__initcall__kmod_parser_imagetag__185_214_bcm963xx_imagetag_parser_init6, ptr @bcm963xx_imagetag_parser_exit, ptr @bcm963xx_parse_imagetag_partitions._entry, ptr @bcm963xx_parse_imagetag_partitions._entry.11, ptr @bcm963xx_parse_imagetag_partitions._entry.15, ptr @bcm963xx_parse_imagetag_partitions._entry.18, ptr @bcm963xx_parse_imagetag_partitions._entry.5, ptr @bcm963xx_parse_imagetag_partitions._entry.8, ptr @bcm963xx_parse_imagetag_partitions._entry_ptr, ptr @bcm963xx_parse_imagetag_partitions._entry_ptr.10, ptr @bcm963xx_parse_imagetag_partitions._entry_ptr.13, ptr @bcm963xx_parse_imagetag_partitions._entry_ptr.17, ptr @bcm963xx_parse_imagetag_partitions._entry_ptr.20, ptr @bcm963xx_parse_imagetag_partitions._entry_ptr.7, ptr @bcm963xx_read_imagetag._entry, ptr @bcm963xx_read_imagetag._entry.23, ptr @bcm963xx_read_imagetag._entry_ptr, ptr @bcm963xx_read_imagetag._entry_ptr.25, ptr @bcm963xx_imagetag_parser, ptr @.str, ptr @parse_bcm963xx_imagetag_match_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm963xx_imagetag_parser to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_bcm963xx_imagetag_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm963xx_parse_imagetag_partitions._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm963xx_parse_imagetag_partitions._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm963xx_parse_imagetag_partitions._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm963xx_parse_imagetag_partitions._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm963xx_parse_imagetag_partitions._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm963xx_parse_imagetag_partitions._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm963xx_read_imagetag._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm963xx_read_imagetag._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm963xx_imagetag_parser_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__register_mtd_parser(ptr noundef nonnull @bcm963xx_imagetag_parser, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bcm963xx_imagetag_parser_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @deregister_mtd_parser(ptr noundef nonnull @bcm963xx_imagetag_parser) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @deregister_mtd_parser(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_mtd_parser(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm963xx_parse_imagetag_partitions(ptr noundef %master, ptr nocapture noundef writeonly %pparts, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  %retlen.i = alloca i32, align 4
  %rootfsaddr = alloca i32, align 4
  %kerneladdr = alloca i32, align 4
  %kernellen = alloca i32, align 4
  %totallen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rootfsaddr) #8
  %0 = ptrtoint ptr %rootfsaddr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rootfsaddr, align 4, !annotation !70
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %kerneladdr) #8
  %1 = ptrtoint ptr %kerneladdr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %kerneladdr, align 4, !annotation !70
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %kernellen) #8
  %2 = ptrtoint ptr %kernellen to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %kernellen, align 4, !annotation !70
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %totallen) #8
  %3 = ptrtoint ptr %totallen to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %totallen, align 4, !annotation !70
  %call = tail call noalias ptr @vmalloc(i32 noundef 256) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen.i) #8
  %4 = ptrtoint ptr %retlen.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %retlen.i, align 4, !annotation !70
  %call.i = call i32 @mtd_read(ptr noundef %master, i64 noundef 0, i32 noundef 256, ptr noundef nonnull %retlen.i, ptr noundef nonnull %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.bcm963xx_read_imagetag.exit.thread_crit_edge

if.end.bcm963xx_read_imagetag.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm963xx_read_imagetag.exit.thread

if.end.i:                                         ; preds = %if.end
  %5 = ptrtoint ptr %retlen.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %retlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %6)
  %cmp.not.i = icmp eq i32 %6, 256
  br i1 %cmp.not.i, label %if.end2.i, label %if.end.i.bcm963xx_read_imagetag.exit.thread_crit_edge

if.end.i.bcm963xx_read_imagetag.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm963xx_read_imagetag.exit.thread

if.end2.i:                                        ; preds = %if.end.i
  %call3.i = call i32 @crc32_le(i32 noundef -1, ptr noundef nonnull %call, i32 noundef 236) #12
  %header_crc.i = getelementptr inbounds %struct.bcm_tag, ptr %call, i32 0, i32 23
  %7 = ptrtoint ptr %header_crc.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %header_crc.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i, i32 %8)
  %cmp4.i = icmp eq i32 %call3.i, %8
  br i1 %cmp4.i, label %do.body, label %do.end23.i

do.end23.i:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  %call26.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i64 noundef 0, i32 noundef %8, i32 noundef %call3.i) #13
  br label %bcm963xx_read_imagetag.exit.thread

bcm963xx_read_imagetag.exit.thread:               ; preds = %do.end23.i, %if.end.i.bcm963xx_read_imagetag.exit.thread_crit_edge, %if.end.bcm963xx_read_imagetag.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -5, %if.end.i.bcm963xx_read_imagetag.exit.thread_crit_edge ], [ %call.i, %if.end.bcm963xx_read_imagetag.exit.thread_crit_edge ], [ -22, %do.end23.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i) #8
  br label %cleanup.sink.split

do.body:                                          ; preds = %if.end2.i
  %board_id.i = getelementptr inbounds %struct.bcm_tag, ptr %call, i32 0, i32 4
  %arrayidx.i = getelementptr %struct.bcm_tag, ptr %call, i32 0, i32 4, i32 15
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx.i, align 1
  %arrayidx9.i = getelementptr i8, ptr %call, i32 3
  %10 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx9.i, align 1
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i64 noundef 0, ptr noundef nonnull %call, ptr noundef %board_id.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i) #8
  %flash_image_start = getelementptr inbounds %struct.bcm_tag, ptr %call, i32 0, i32 9
  %arrayidx = getelementptr %struct.bcm_tag, ptr %call, i32 0, i32 9, i32 11
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %arrayidx, align 1
  %call6 = call i32 @kstrtouint(ptr noundef %flash_image_start, i32 noundef 10, ptr noundef nonnull %rootfsaddr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %lor.lhs.false, label %do.body.do.end11_crit_edge

do.body.do.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11

lor.lhs.false:                                    ; preds = %do.body
  %12 = ptrtoint ptr %rootfsaddr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rootfsaddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1077936128, i32 %13)
  %cmp = icmp ult i32 %13, -1077936128
  br i1 %cmp, label %lor.lhs.false.do.end11_crit_edge, label %do.body16

lor.lhs.false.do.end11_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11

do.end11:                                         ; preds = %lor.lhs.false.do.end11_crit_edge, %do.body.do.end11_crit_edge
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 12, ptr noundef %flash_image_start) #13
  br label %cleanup.sink.split

do.body16:                                        ; preds = %lor.lhs.false
  %kernel_address = getelementptr inbounds %struct.bcm_tag, ptr %call, i32 0, i32 11
  %arrayidx19 = getelementptr %struct.bcm_tag, ptr %call, i32 0, i32 11, i32 11
  %14 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx19, align 1
  %call24 = call i32 @kstrtouint(ptr noundef %kernel_address, i32 noundef 10, ptr noundef nonnull %kerneladdr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %lor.lhs.false26, label %do.body16.do.end31_crit_edge

do.body16.do.end31_crit_edge:                     ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end31

lor.lhs.false26:                                  ; preds = %do.body16
  %15 = ptrtoint ptr %kerneladdr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %kerneladdr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1077936128, i32 %16)
  %cmp27 = icmp ult i32 %16, -1077936128
  br i1 %cmp27, label %lor.lhs.false26.do.end31_crit_edge, label %do.body37

lor.lhs.false26.do.end31_crit_edge:               ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end31

do.end31:                                         ; preds = %lor.lhs.false26.do.end31_crit_edge, %do.body16.do.end31_crit_edge
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 12, ptr noundef %kernel_address) #13
  br label %cleanup.sink.split

do.body37:                                        ; preds = %lor.lhs.false26
  %kernel_length = getelementptr inbounds %struct.bcm_tag, ptr %call, i32 0, i32 12
  %arrayidx40 = getelementptr %struct.bcm_tag, ptr %call, i32 0, i32 12, i32 9
  %17 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %arrayidx40, align 1
  %call45 = call i32 @kstrtouint(ptr noundef %kernel_length, i32 noundef 10, ptr noundef nonnull %kernellen) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %do.body56, label %do.end50

do.end50:                                         ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #10
  %call54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 10, ptr noundef %kernel_length) #13
  br label %cleanup.sink.split

do.body56:                                        ; preds = %do.body37
  %total_length = getelementptr inbounds %struct.bcm_tag, ptr %call, i32 0, i32 6
  %arrayidx59 = getelementptr %struct.bcm_tag, ptr %call, i32 0, i32 6, i32 9
  %18 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx59, align 1
  %call64 = call i32 @kstrtouint(ptr noundef %total_length, i32 noundef 10, ptr noundef nonnull %totallen) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end74, label %do.end69

do.end69:                                         ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #10
  %call73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 10, ptr noundef %total_length) #13
  br label %cleanup.sink.split

if.end74:                                         ; preds = %do.body56
  %19 = ptrtoint ptr %rootfsaddr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rootfsaddr, align 4
  %21 = ptrtoint ptr %kerneladdr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %kerneladdr, align 4
  %23 = call i32 @llvm.umin.i32(i32 %20, i32 %22)
  %offset.0 = add i32 %23, -256
  %sub79 = sub i32 %22, %offset.0
  %24 = ptrtoint ptr %kerneladdr to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub79, ptr %kerneladdr, align 4
  %sub80 = sub i32 %20, %offset.0
  %25 = ptrtoint ptr %rootfsaddr to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub80, ptr %rootfsaddr, align 4
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %master, i32 0, i32 3
  %26 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %erasesize, align 8
  %28 = ptrtoint ptr %totallen to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %totallen, align 4
  %sub82 = add i32 %27, -1
  %add = add i32 %sub82, %29
  %30 = urem i32 %add, %27
  %mul = sub i32 %add, %30
  call void @__sanitizer_cov_trace_cmp4(i32 %sub79, i32 %sub80)
  %cmp83 = icmp ugt i32 %sub79, %sub80
  br i1 %cmp83, label %if.then84, label %if.else86

if.then84:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  %sub85 = sub i32 %sub79, %sub80
  br label %if.end91

if.else86:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %kernellen to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %kernellen, align 4
  %add87 = add i32 %32, %sub79
  %33 = ptrtoint ptr %rootfsaddr to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add87, ptr %rootfsaddr, align 4
  %sub88 = sub i32 %mul, %add87
  br label %if.end91

if.end91:                                         ; preds = %if.else86, %if.then84
  %rootfslen.0 = phi i32 [ %sub85, %if.then84 ], [ %sub88, %if.else86 ]
  %size = getelementptr inbounds %struct.mtd_info, ptr %master, i32 0, i32 2
  %34 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %size, align 8
  %36 = trunc i64 %35 to i32
  %conv93 = sub i32 %36, %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rootfslen.0)
  %cmp94.not = icmp eq i32 %rootfslen.0, 0
  %not.cmp94.not = xor i1 %cmp94.not, true
  %spec.select = zext i1 %not.cmp94.not to i32
  %37 = ptrtoint ptr %kernellen to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %kernellen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp98.not = icmp eq i32 %38, 0
  %inc101 = select i1 %cmp94.not, i32 1, i32 2
  %nrparts.1 = select i1 %cmp98.not, i32 %spec.select, i32 %inc101
  %add105 = mul nuw nsw i32 %nrparts.1, 50
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add105, i32 noundef 3520) #11
  %tobool107.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool107.not, label %if.end91.cleanup.sink.split_crit_edge, label %if.end109

if.end91.cleanup.sink.split_crit_edge:            ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end109:                                        ; preds = %if.end91
  %39 = ptrtoint ptr %kernellen to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %kernellen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp110.not = icmp eq i32 %40, 0
  br i1 %cmp110.not, label %if.end109.if.end128_crit_edge, label %if.then112

if.end109.if.end128_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end128

if.then112:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #10
  %narrow = select i1 %not.cmp94.not, i1 %cmp83, i1 false
  %kernelpart.0 = zext i1 %narrow to i32
  %arrayidx120 = getelementptr %struct.mtd_partition, ptr %call9.i.i, i32 %kernelpart.0
  %41 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @.str.14, ptr %arrayidx120, align 8
  %42 = ptrtoint ptr %kerneladdr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %kerneladdr, align 4
  %conv121 = zext i32 %43 to i64
  %offset123 = getelementptr %struct.mtd_partition, ptr %call9.i.i, i32 %kernelpart.0, i32 3
  %44 = ptrtoint ptr %offset123 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %conv121, ptr %offset123, align 8
  %conv124 = zext i32 %40 to i64
  %size126 = getelementptr %struct.mtd_partition, ptr %call9.i.i, i32 %kernelpart.0, i32 2
  %45 = ptrtoint ptr %size126 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %conv124, ptr %size126, align 8
  br label %if.end128

if.end128:                                        ; preds = %if.then112, %if.end109.if.end128_crit_edge
  %curpart.0 = phi i32 [ 1, %if.then112 ], [ 0, %if.end109.if.end128_crit_edge ]
  br i1 %cmp94.not, label %if.end158, label %if.then131

if.then131:                                       ; preds = %if.end128
  %not.cmp110.not = xor i1 %cmp110.not, true
  %narrow271 = select i1 %not.cmp110.not, i1 %cmp83, i1 false
  %spec.select259 = sext i1 %narrow271 to i32
  %rootfspart.0 = add nsw i32 %curpart.0, %spec.select259
  %arrayidx139 = getelementptr %struct.mtd_partition, ptr %call9.i.i, i32 %rootfspart.0
  %46 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @.str.1, ptr %arrayidx139, align 8
  %47 = ptrtoint ptr %rootfsaddr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rootfsaddr, align 4
  %conv141 = zext i32 %48 to i64
  %offset143 = getelementptr %struct.mtd_partition, ptr %call9.i.i, i32 %rootfspart.0, i32 3
  %49 = ptrtoint ptr %offset143 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %conv141, ptr %offset143, align 8
  %conv144 = zext i32 %rootfslen.0 to i64
  %size146 = getelementptr %struct.mtd_partition, ptr %call9.i.i, i32 %rootfspart.0, i32 2
  %50 = ptrtoint ptr %size146 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %conv144, ptr %size146, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %36)
  %cmp147.not = icmp eq i32 %mul, %36
  %brmerge = select i1 %cmp147.not, i1 true, i1 %cmp83
  br i1 %brmerge, label %if.then131.do.end163.preheader_crit_edge, label %if.then151

if.then131.do.end163.preheader_crit_edge:         ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end163.preheader

if.then151:                                       ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #10
  %conv152 = zext i32 %conv93 to i64
  %add155 = add nuw nsw i64 %conv152, %conv144
  %51 = ptrtoint ptr %size146 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %add155, ptr %size146, align 8
  br label %do.end163.preheader

if.end158:                                        ; preds = %if.end128
  %cmp159272.not = select i1 %cmp98.not, i1 %cmp94.not, i1 false
  br i1 %cmp159272.not, label %if.end158.for.cond._crit_edge_crit_edge, label %if.end158.do.end163.preheader_crit_edge

if.end158.do.end163.preheader_crit_edge:          ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end163.preheader

if.end158.for.cond._crit_edge_crit_edge:          ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond._crit_edge

do.end163.preheader:                              ; preds = %if.end158.do.end163.preheader_crit_edge, %if.then151, %if.then131.do.end163.preheader_crit_edge
  %umax = call i32 @llvm.umax.i32(i32 %nrparts.1, i32 1)
  %52 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call9.i.i, align 128
  %offset168 = getelementptr %struct.mtd_partition, ptr %call9.i.i, i32 0, i32 3
  %54 = ptrtoint ptr %offset168 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %offset168, align 16
  %size170 = getelementptr %struct.mtd_partition, ptr %call9.i.i, i32 0, i32 2
  %56 = ptrtoint ptr %size170 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %size170, align 8
  %call171 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef 0, ptr noundef %53, i64 noundef %55, i64 noundef %57) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %nrparts.1)
  %exitcond.not = icmp ult i32 %nrparts.1, 2
  br i1 %exitcond.not, label %do.end163.preheader.for.cond._crit_edge_crit_edge, label %do.end163.1

do.end163.preheader.for.cond._crit_edge_crit_edge: ; preds = %do.end163.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond._crit_edge

do.end163.1:                                      ; preds = %do.end163.preheader
  %arrayidx165.1 = getelementptr %struct.mtd_partition, ptr %call9.i.i, i32 1
  %58 = ptrtoint ptr %arrayidx165.1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx165.1, align 8
  %offset168.1 = getelementptr %struct.mtd_partition, ptr %call9.i.i, i32 1, i32 3
  %60 = ptrtoint ptr %offset168.1 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %offset168.1, align 8
  %size170.1 = getelementptr %struct.mtd_partition, ptr %call9.i.i, i32 1, i32 2
  %62 = ptrtoint ptr %size170.1 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %size170.1, align 16
  %call171.1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef 1, ptr noundef %59, i64 noundef %61, i64 noundef %63) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %umax)
  %exitcond.not.1 = icmp eq i32 %umax, 2
  br i1 %exitcond.not.1, label %do.end163.1.for.cond._crit_edge_crit_edge, label %do.end163.2

do.end163.1.for.cond._crit_edge_crit_edge:        ; preds = %do.end163.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond._crit_edge

do.end163.2:                                      ; preds = %do.end163.1
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx165.2 = getelementptr %struct.mtd_partition, ptr %call9.i.i, i32 2
  %64 = ptrtoint ptr %arrayidx165.2 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx165.2, align 16
  %offset168.2 = getelementptr %struct.mtd_partition, ptr %call9.i.i, i32 2, i32 3
  %66 = ptrtoint ptr %offset168.2 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %offset168.2, align 32
  %size170.2 = getelementptr %struct.mtd_partition, ptr %call9.i.i, i32 2, i32 2
  %68 = ptrtoint ptr %size170.2 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %size170.2, align 8
  %call171.2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef 2, ptr noundef %65, i64 noundef %67, i64 noundef %69) #13
  br label %for.cond._crit_edge

for.cond._crit_edge:                              ; preds = %do.end163.2, %do.end163.1.for.cond._crit_edge_crit_edge, %do.end163.preheader.for.cond._crit_edge_crit_edge, %if.end158.for.cond._crit_edge_crit_edge
  %call177 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %mul, i32 noundef %conv93) #13
  %70 = ptrtoint ptr %pparts to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call9.i.i, ptr %pparts, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.cond._crit_edge, %if.end91.cleanup.sink.split_crit_edge, %do.end69, %do.end50, %do.end31, %do.end11, %bcm963xx_read_imagetag.exit.thread
  %retval.0.ph = phi i32 [ %nrparts.1, %for.cond._crit_edge ], [ %retval.0.i.ph, %bcm963xx_read_imagetag.exit.thread ], [ -12, %if.end91.cleanup.sink.split_crit_edge ], [ -22, %do.end69 ], [ -22, %do.end50 ], [ -22, %do.end31 ], [ -22, %do.end11 ]
  call void @vfree(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %totallen) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %kernellen) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %kerneladdr) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rootfsaddr) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_read(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind readonly willreturn }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !57, !59, !60}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @__initcall__kmod_parser_imagetag__185_214_bcm963xx_imagetag_parser_init6, !1, !"__initcall__kmod_parser_imagetag__185_214_bcm963xx_imagetag_parser_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/parsers/parser_imagetag.c", i32 214, i32 1}
!2 = !{ptr @__exitcall_bcm963xx_imagetag_parser_exit, !1, !"__exitcall_bcm963xx_imagetag_parser_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file186, !4, !"__UNIQUE_ID_file186", i1 false, i1 false}
!4 = !{!"../drivers/mtd/parsers/parser_imagetag.c", i32 216, i32 1}
!5 = !{ptr @__UNIQUE_ID_license187, !4, !"__UNIQUE_ID_license187", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author188, !7, !"__UNIQUE_ID_author188", i1 false, i1 false}
!7 = !{!"../drivers/mtd/parsers/parser_imagetag.c", i32 217, i32 1}
!8 = !{ptr @__UNIQUE_ID_author189, !9, !"__UNIQUE_ID_author189", i1 false, i1 false}
!9 = !{!"../drivers/mtd/parsers/parser_imagetag.c", i32 218, i32 1}
!10 = !{ptr @__UNIQUE_ID_author190, !11, !"__UNIQUE_ID_author190", i1 false, i1 false}
!11 = !{!"../drivers/mtd/parsers/parser_imagetag.c", i32 219, i32 1}
!12 = !{ptr @__UNIQUE_ID_author191, !13, !"__UNIQUE_ID_author191", i1 false, i1 false}
!13 = !{!"../drivers/mtd/parsers/parser_imagetag.c", i32 220, i32 1}
!14 = !{ptr @__UNIQUE_ID_description192, !15, !"__UNIQUE_ID_description192", i1 false, i1 false}
!15 = !{!"../drivers/mtd/parsers/parser_imagetag.c", i32 221, i32 1}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mtd/parsers/parser_imagetag.c", i32 211, i32 10}
!18 = !{ptr @bcm963xx_imagetag_parser, !19, !"bcm963xx_imagetag_parser", i1 false, i1 false}
!19 = !{!"../drivers/mtd/parsers/parser_imagetag.c", i32 209, i32 31}
!20 = !{ptr @parse_bcm963xx_imagetag_match_table, !21, !"parse_bcm963xx_imagetag_match_table", i1 false, i1 false}
!21 = !{!"../drivers/mtd/parsers/parser_imagetag.c", i32 203, i32 34}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mtd/parsers/parser_imagetag.c", i32 78, i32 39}
!24 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mtd/parsers/parser_imagetag.c", i32 83, i32 4}
!26 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @bcm963xx_parse_imagetag_partitions._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @bcm963xx_parse_imagetag_partitions._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mtd/parsers/parser_imagetag.c", i32 93, i32 4}
!32 = !{ptr @bcm963xx_parse_imagetag_partitions._entry.5, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @bcm963xx_parse_imagetag_partitions._entry_ptr.7, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mtd/parsers/parser_imagetag.c", i32 102, i32 4}
!36 = !{ptr @bcm963xx_parse_imagetag_partitions._entry.8, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @bcm963xx_parse_imagetag_partitions._entry_ptr.10, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mtd/parsers/parser_imagetag.c", i32 111, i32 4}
!40 = !{ptr @bcm963xx_parse_imagetag_partitions._entry.11, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @bcm963xx_parse_imagetag_partitions._entry_ptr.13, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mtd/parsers/parser_imagetag.c", i32 165, i32 28}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mtd/parsers/parser_imagetag.c", i32 185, i32 3}
!46 = !{ptr @bcm963xx_parse_imagetag_partitions._entry.15, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @bcm963xx_parse_imagetag_partitions._entry_ptr.17, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mtd/parsers/parser_imagetag.c", i32 188, i32 2}
!50 = !{ptr @bcm963xx_parse_imagetag_partitions._entry.18, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @bcm963xx_parse_imagetag_partitions._entry_ptr.20, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mtd/parsers/parser_imagetag.c", i32 48, i32 3}
!54 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @bcm963xx_read_imagetag._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @bcm963xx_read_imagetag._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/mtd/parsers/parser_imagetag.c", i32 54, i32 2}
!59 = !{ptr @bcm963xx_read_imagetag._entry.23, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @bcm963xx_read_imagetag._entry_ptr.25, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{!"auto-init"}
