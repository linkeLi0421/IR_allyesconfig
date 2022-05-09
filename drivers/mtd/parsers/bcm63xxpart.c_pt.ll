; ModuleID = '/llk/IR_all_yes/drivers/mtd/parsers/bcm63xxpart.c_pt.bc'
source_filename = "../drivers/mtd/parsers/bcm63xxpart.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mtd_part_parser = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }

@__initcall__kmod_bcm63xxpart__273_165_bcm63xx_cfe_parser_init6 = internal global ptr @bcm63xx_cfe_parser_init, section ".initcall6.init", align 4
@bcm63xx_cfe_parser = internal global { %struct.mtd_part_parser, [36 x i8] } { %struct.mtd_part_parser { %struct.list_head zeroinitializer, ptr null, ptr @.str, ptr @parse_bcm63xx_cfe_match_table, ptr @bcm63xx_parse_cfe_partitions, ptr null }, [36 x i8] zeroinitializer }, align 32
@__exitcall_bcm63xx_cfe_parser_exit = internal global ptr @bcm63xx_cfe_parser_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file274 = internal constant [49 x i8] c"bcm63xxpart.file=drivers/mtd/parsers/bcm63xxpart\00", section ".modinfo", align 1
@__UNIQUE_ID_license275 = internal constant [24 x i8] c"bcm63xxpart.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author276 = internal constant [68 x i8] c"bcm63xxpart.author=Daniel Dickinson <openwrt@cshore.neomailbox.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_author277 = internal constant [58 x i8] c"bcm63xxpart.author=Florian Fainelli <florian@openwrt.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author278 = internal constant [51 x i8] c"bcm63xxpart.author=Mike Albon <malbon@openwrt.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author279 = internal constant [56 x i8] c"bcm63xxpart.author=Jonas Gorski <jonas.gorski@gmail.com\00", section ".modinfo", align 1
@__UNIQUE_ID_description280 = internal constant [69 x i8] c"bcm63xxpart.description=MTD partitioning for BCM63XX CFE bootloaders\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bcm63xxpart\00", [20 x i8] zeroinitializer }, align 32
@parse_bcm63xx_cfe_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm963xx-cfe-nor-partitions\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@bcm63xx_read_nvram._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 67, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\014bcm63xxpart: nvram checksum failed, contents may be invalid (expected %08x, got %08x)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bcm63xx_read_nvram\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/mtd/parsers/bcm63xxpart.c\00", [62 x i8] zeroinitializer }, align 32
@bcm63xx_read_nvram._entry_ptr = internal global ptr @bcm63xx_read_nvram._entry, section ".printk_index", align 4
@bcm63xx_parse_cfe_nor_partitions._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016bcm63xxpart: Partition %d is %s offset %llx and length %llx\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"bcm63xx_parse_cfe_nor_partitions\00", [63 x i8] zeroinitializer }, align 32
@bcm63xx_parse_cfe_nor_partitions._entry_ptr = internal global ptr @bcm63xx_parse_cfe_nor_partitions._entry, section ".printk_index", align 4
@___asan_gen_.10 = private unnamed_addr constant [19 x i8] c"bcm63xx_cfe_parser\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 160, i32 31 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 162, i32 10 }
@___asan_gen_.16 = private unnamed_addr constant [30 x i8] c"parse_bcm63xx_cfe_match_table\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 154, i32 34 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 66, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private constant [37 x i8] c"../drivers/mtd/parsers/bcm63xxpart.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 118, i32 3 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_author276, ptr @__UNIQUE_ID_author277, ptr @__UNIQUE_ID_author278, ptr @__UNIQUE_ID_author279, ptr @__UNIQUE_ID_description280, ptr @__UNIQUE_ID_file274, ptr @__UNIQUE_ID_license275, ptr @__exitcall_bcm63xx_cfe_parser_exit, ptr @__initcall__kmod_bcm63xxpart__273_165_bcm63xx_cfe_parser_init6, ptr @bcm63xx_cfe_parser_exit, ptr @bcm63xx_parse_cfe_nor_partitions._entry, ptr @bcm63xx_parse_cfe_nor_partitions._entry_ptr, ptr @bcm63xx_read_nvram._entry, ptr @bcm63xx_read_nvram._entry_ptr, ptr @bcm63xx_cfe_parser, ptr @.str, ptr @parse_bcm63xx_cfe_match_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm63xx_cfe_parser to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_bcm63xx_cfe_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm63xx_read_nvram._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm63xx_parse_cfe_nor_partitions._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm63xx_cfe_parser_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__register_mtd_parser(ptr noundef nonnull @bcm63xx_cfe_parser, ptr noundef null) #3
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bcm63xx_cfe_parser_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @deregister_mtd_parser(ptr noundef nonnull @bcm63xx_cfe_parser) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @deregister_mtd_parser(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_mtd_parser(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bcm63xx_parse_cfe_partitions(ptr nocapture noundef readnone %master, ptr nocapture noundef readnone %pparts, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !30, !32, !34, !36, !37, !38, !39, !41}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @__initcall__kmod_bcm63xxpart__273_165_bcm63xx_cfe_parser_init6, !1, !"__initcall__kmod_bcm63xxpart__273_165_bcm63xx_cfe_parser_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/parsers/bcm63xxpart.c", i32 165, i32 1}
!2 = !{ptr @__exitcall_bcm63xx_cfe_parser_exit, !1, !"__exitcall_bcm63xx_cfe_parser_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file274, !4, !"__UNIQUE_ID_file274", i1 false, i1 false}
!4 = !{!"../drivers/mtd/parsers/bcm63xxpart.c", i32 167, i32 1}
!5 = !{ptr @__UNIQUE_ID_license275, !4, !"__UNIQUE_ID_license275", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author276, !7, !"__UNIQUE_ID_author276", i1 false, i1 false}
!7 = !{!"../drivers/mtd/parsers/bcm63xxpart.c", i32 168, i32 1}
!8 = !{ptr @__UNIQUE_ID_author277, !9, !"__UNIQUE_ID_author277", i1 false, i1 false}
!9 = !{!"../drivers/mtd/parsers/bcm63xxpart.c", i32 169, i32 1}
!10 = !{ptr @__UNIQUE_ID_author278, !11, !"__UNIQUE_ID_author278", i1 false, i1 false}
!11 = !{!"../drivers/mtd/parsers/bcm63xxpart.c", i32 170, i32 1}
!12 = !{ptr @__UNIQUE_ID_author279, !13, !"__UNIQUE_ID_author279", i1 false, i1 false}
!13 = !{!"../drivers/mtd/parsers/bcm63xxpart.c", i32 171, i32 1}
!14 = !{ptr @__UNIQUE_ID_description280, !15, !"__UNIQUE_ID_description280", i1 false, i1 false}
!15 = !{!"../drivers/mtd/parsers/bcm63xxpart.c", i32 172, i32 1}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mtd/parsers/bcm63xxpart.c", i32 162, i32 10}
!18 = !{ptr @bcm63xx_cfe_parser, !19, !"bcm63xx_cfe_parser", i1 false, i1 false}
!19 = !{!"../drivers/mtd/parsers/bcm63xxpart.c", i32 160, i32 31}
!20 = !{ptr @parse_bcm63xx_cfe_match_table, !21, !"parse_bcm63xx_cfe_match_table", i1 false, i1 false}
!21 = !{!"../drivers/mtd/parsers/bcm63xxpart.c", i32 154, i32 34}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mtd/parsers/bcm63xxpart.c", i32 66, i32 3}
!24 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @bcm63xx_read_nvram._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @bcm63xx_read_nvram._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = distinct !{null, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mtd/parsers/bcm63xxpart.c", i32 101, i32 24}
!30 = distinct !{null, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mtd/parsers/bcm63xxpart.c", i32 106, i32 24}
!32 = distinct !{null, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mtd/parsers/bcm63xxpart.c", i32 112, i32 24}
!34 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mtd/parsers/bcm63xxpart.c", i32 118, i32 3}
!36 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @bcm63xx_parse_cfe_nor_partitions._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @bcm63xx_parse_cfe_nor_partitions._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = distinct !{null, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mtd/parsers/bcm63xxpart.c", i32 76, i32 2}
!41 = distinct !{null, !42, !"bcm63xx_cfe_part_types", i1 false, i1 false}
!42 = !{!"../drivers/mtd/parsers/bcm63xxpart.c", i32 75, i32 27}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
