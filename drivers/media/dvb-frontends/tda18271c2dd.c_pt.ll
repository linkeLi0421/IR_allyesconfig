; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/tda18271c2dd.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/tda18271c2dd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+tda18271c2dd_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_tda18271c2dd_attach\09\09\09\09"
module asm "\09.long\09__crc_tda18271c2dd_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tda18271c2dd_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22tda18271c2dd_attach\22\09\09\09\09\09"
module asm "__kstrtabns_tda18271c2dd_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.SMapI = type { i32, i32 }
%struct.SRFBandMap = type { i32, i32, i32, i32 }
%struct.SMap = type { i32, i8 }
%struct.SStandardParam = type { i32, i32, i8, i8 }
%struct.SMap2 = type { i32, i8, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.tda_state = type { ptr, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, [39 x i8], [7 x i32], [7 x i32], [7 x i32], [7 x i32], [7 x i32], [7 x i32], [7 x i32], i8, i8 }

@tuner_ops = internal constant { %struct.dvb_tuner_ops, [36 x i8] } { %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"NXP TDA18271C2D\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 47125000, i32 865000000, i32 62500, i32 0, i32 0, i32 0 }, ptr @release, ptr @init, ptr @sleep, ptr null, ptr null, ptr @set_params, ptr null, ptr null, ptr null, ptr @get_bandwidth, ptr @get_if_frequency, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_tda18271c2dd_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_tda18271c2dd_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_tda18271c2dd_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tda18271c2dd_attach to i32), ptr @__kstrtab_tda18271c2dd_attach, ptr @__kstrtabns_tda18271c2dd_attach }, section "___ksymtab_gpl+tda18271c2dd_attach", align 4
@__UNIQUE_ID_description290 = internal constant [43 x i8] c"tda18271c2dd.description=TDA18271C2 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [23 x i8] c"tda18271c2dd.author=DD\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [59 x i8] c"tda18271c2dd.file=drivers/media/dvb-frontends/tda18271c2dd\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [25 x i8] c"tda18271c2dd.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@i2c_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013tda18271c2dd: i2c write error at addr %i\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2c_write\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/media/dvb-frontends/tda18271c2dd.c\00", [53 x i8] zeroinitializer }, align 32
@i2c_write._entry_ptr = internal global ptr @i2c_write._entry, section ".printk_index", align 4
@WriteRegs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014%s: i2c wr: len=%d is too big!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"WriteRegs\00", [22 x i8] zeroinitializer }, align 32
@WriteRegs._entry_ptr = internal global ptr @WriteRegs._entry, section ".printk_index", align 4
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tda18271c2dd\00", [19 x i8] zeroinitializer }, align 32
@m_RF_Cal_Map = internal constant { [438 x %struct.SMapI], [880 x i8] } { [438 x %struct.SMapI] [%struct.SMapI { i32 41000000, i32 15 }, %struct.SMapI { i32 43000000, i32 28 }, %struct.SMapI { i32 45000000, i32 47 }, %struct.SMapI { i32 46000000, i32 57 }, %struct.SMapI { i32 47000000, i32 64 }, %struct.SMapI { i32 47900000, i32 80 }, %struct.SMapI { i32 49100000, i32 22 }, %struct.SMapI { i32 50000000, i32 24 }, %struct.SMapI { i32 51000000, i32 32 }, %struct.SMapI { i32 53000000, i32 40 }, %struct.SMapI { i32 55000000, i32 43 }, %struct.SMapI { i32 56000000, i32 50 }, %struct.SMapI { i32 57000000, i32 53 }, %struct.SMapI { i32 58000000, i32 62 }, %struct.SMapI { i32 59000000, i32 67 }, %struct.SMapI { i32 60000000, i32 78 }, %struct.SMapI { i32 61100000, i32 85 }, %struct.SMapI { i32 63000000, i32 15 }, %struct.SMapI { i32 64000000, i32 17 }, %struct.SMapI { i32 65000000, i32 18 }, %struct.SMapI { i32 66000000, i32 21 }, %struct.SMapI { i32 67000000, i32 22 }, %struct.SMapI { i32 68000000, i32 23 }, %struct.SMapI { i32 70000000, i32 25 }, %struct.SMapI { i32 71000000, i32 28 }, %struct.SMapI { i32 72000000, i32 29 }, %struct.SMapI { i32 73000000, i32 31 }, %struct.SMapI { i32 74000000, i32 32 }, %struct.SMapI { i32 75000000, i32 33 }, %struct.SMapI { i32 76000000, i32 36 }, %struct.SMapI { i32 77000000, i32 37 }, %struct.SMapI { i32 78000000, i32 39 }, %struct.SMapI { i32 80000000, i32 40 }, %struct.SMapI { i32 81000000, i32 41 }, %struct.SMapI { i32 82000000, i32 45 }, %struct.SMapI { i32 83000000, i32 46 }, %struct.SMapI { i32 84000000, i32 47 }, %struct.SMapI { i32 85000000, i32 49 }, %struct.SMapI { i32 86000000, i32 51 }, %struct.SMapI { i32 87000000, i32 52 }, %struct.SMapI { i32 88000000, i32 53 }, %struct.SMapI { i32 89000000, i32 55 }, %struct.SMapI { i32 90000000, i32 56 }, %struct.SMapI { i32 91000000, i32 57 }, %struct.SMapI { i32 93000000, i32 60 }, %struct.SMapI { i32 94000000, i32 62 }, %struct.SMapI { i32 95000000, i32 63 }, %struct.SMapI { i32 96000000, i32 64 }, %struct.SMapI { i32 97000000, i32 66 }, %struct.SMapI { i32 99000000, i32 69 }, %struct.SMapI { i32 100000000, i32 70 }, %struct.SMapI { i32 102000000, i32 72 }, %struct.SMapI { i32 103000000, i32 74 }, %struct.SMapI { i32 105000000, i32 77 }, %struct.SMapI { i32 106000000, i32 78 }, %struct.SMapI { i32 107000000, i32 80 }, %struct.SMapI { i32 108000000, i32 81 }, %struct.SMapI { i32 110000000, i32 84 }, %struct.SMapI { i32 111000000, i32 86 }, %struct.SMapI { i32 112000000, i32 87 }, %struct.SMapI { i32 113000000, i32 88 }, %struct.SMapI { i32 114000000, i32 89 }, %struct.SMapI { i32 115000000, i32 92 }, %struct.SMapI { i32 116000000, i32 93 }, %struct.SMapI { i32 117000000, i32 95 }, %struct.SMapI { i32 119000000, i32 96 }, %struct.SMapI { i32 120000000, i32 100 }, %struct.SMapI { i32 121000000, i32 101 }, %struct.SMapI { i32 122000000, i32 102 }, %struct.SMapI { i32 123000000, i32 104 }, %struct.SMapI { i32 124000000, i32 105 }, %struct.SMapI { i32 125000000, i32 108 }, %struct.SMapI { i32 126000000, i32 109 }, %struct.SMapI { i32 127000000, i32 110 }, %struct.SMapI { i32 128000000, i32 112 }, %struct.SMapI { i32 129000000, i32 113 }, %struct.SMapI { i32 130000000, i32 117 }, %struct.SMapI { i32 131000000, i32 119 }, %struct.SMapI { i32 132000000, i32 120 }, %struct.SMapI { i32 133000000, i32 123 }, %struct.SMapI { i32 134000000, i32 126 }, %struct.SMapI { i32 135000000, i32 129 }, %struct.SMapI { i32 136000000, i32 130 }, %struct.SMapI { i32 137000000, i32 135 }, %struct.SMapI { i32 138000000, i32 136 }, %struct.SMapI { i32 139000000, i32 141 }, %struct.SMapI { i32 140000000, i32 142 }, %struct.SMapI { i32 141000000, i32 145 }, %struct.SMapI { i32 142000000, i32 149 }, %struct.SMapI { i32 143000000, i32 154 }, %struct.SMapI { i32 144000000, i32 157 }, %struct.SMapI { i32 145000000, i32 161 }, %struct.SMapI { i32 146000000, i32 162 }, %struct.SMapI { i32 147000000, i32 164 }, %struct.SMapI { i32 148000000, i32 169 }, %struct.SMapI { i32 149000000, i32 174 }, %struct.SMapI { i32 150000000, i32 176 }, %struct.SMapI { i32 151000000, i32 177 }, %struct.SMapI { i32 152000000, i32 183 }, %struct.SMapI { i32 152600000, i32 189 }, %struct.SMapI { i32 154000000, i32 32 }, %struct.SMapI { i32 155000000, i32 34 }, %struct.SMapI { i32 156000000, i32 36 }, %struct.SMapI { i32 157000000, i32 37 }, %struct.SMapI { i32 158000000, i32 39 }, %struct.SMapI { i32 159000000, i32 41 }, %struct.SMapI { i32 160000000, i32 44 }, %struct.SMapI { i32 161000000, i32 45 }, %struct.SMapI { i32 163000000, i32 46 }, %struct.SMapI { i32 164000000, i32 47 }, %struct.SMapI { i32 164700000, i32 48 }, %struct.SMapI { i32 166000000, i32 17 }, %struct.SMapI { i32 167000000, i32 18 }, %struct.SMapI { i32 168000000, i32 19 }, %struct.SMapI { i32 169000000, i32 20 }, %struct.SMapI { i32 170000000, i32 21 }, %struct.SMapI { i32 172000000, i32 22 }, %struct.SMapI { i32 173000000, i32 23 }, %struct.SMapI { i32 174000000, i32 24 }, %struct.SMapI { i32 175000000, i32 26 }, %struct.SMapI { i32 176000000, i32 27 }, %struct.SMapI { i32 178000000, i32 29 }, %struct.SMapI { i32 179000000, i32 30 }, %struct.SMapI { i32 180000000, i32 31 }, %struct.SMapI { i32 181000000, i32 32 }, %struct.SMapI { i32 182000000, i32 33 }, %struct.SMapI { i32 183000000, i32 34 }, %struct.SMapI { i32 184000000, i32 36 }, %struct.SMapI { i32 185000000, i32 37 }, %struct.SMapI { i32 186000000, i32 38 }, %struct.SMapI { i32 187000000, i32 39 }, %struct.SMapI { i32 188000000, i32 41 }, %struct.SMapI { i32 189000000, i32 42 }, %struct.SMapI { i32 190000000, i32 44 }, %struct.SMapI { i32 191000000, i32 45 }, %struct.SMapI { i32 192000000, i32 46 }, %struct.SMapI { i32 193000000, i32 47 }, %struct.SMapI { i32 194000000, i32 48 }, %struct.SMapI { i32 195000000, i32 51 }, %struct.SMapI { i32 196000000, i32 53 }, %struct.SMapI { i32 198000000, i32 54 }, %struct.SMapI { i32 200000000, i32 56 }, %struct.SMapI { i32 201000000, i32 60 }, %struct.SMapI { i32 202000000, i32 61 }, %struct.SMapI { i32 203500000, i32 62 }, %struct.SMapI { i32 206000000, i32 14 }, %struct.SMapI { i32 208000000, i32 15 }, %struct.SMapI { i32 212000000, i32 16 }, %struct.SMapI { i32 216000000, i32 17 }, %struct.SMapI { i32 217000000, i32 18 }, %struct.SMapI { i32 218000000, i32 19 }, %struct.SMapI { i32 220000000, i32 20 }, %struct.SMapI { i32 222000000, i32 21 }, %struct.SMapI { i32 225000000, i32 22 }, %struct.SMapI { i32 228000000, i32 23 }, %struct.SMapI { i32 231000000, i32 24 }, %struct.SMapI { i32 234000000, i32 25 }, %struct.SMapI { i32 235000000, i32 26 }, %struct.SMapI { i32 236000000, i32 27 }, %struct.SMapI { i32 237000000, i32 28 }, %struct.SMapI { i32 240000000, i32 29 }, %struct.SMapI { i32 242000000, i32 30 }, %struct.SMapI { i32 244000000, i32 31 }, %struct.SMapI { i32 247000000, i32 32 }, %struct.SMapI { i32 249000000, i32 33 }, %struct.SMapI { i32 252000000, i32 34 }, %struct.SMapI { i32 253000000, i32 35 }, %struct.SMapI { i32 254000000, i32 36 }, %struct.SMapI { i32 256000000, i32 37 }, %struct.SMapI { i32 259000000, i32 38 }, %struct.SMapI { i32 262000000, i32 39 }, %struct.SMapI { i32 264000000, i32 40 }, %struct.SMapI { i32 267000000, i32 41 }, %struct.SMapI { i32 269000000, i32 42 }, %struct.SMapI { i32 271000000, i32 43 }, %struct.SMapI { i32 273000000, i32 44 }, %struct.SMapI { i32 275000000, i32 45 }, %struct.SMapI { i32 277000000, i32 46 }, %struct.SMapI { i32 279000000, i32 47 }, %struct.SMapI { i32 282000000, i32 48 }, %struct.SMapI { i32 284000000, i32 49 }, %struct.SMapI { i32 286000000, i32 50 }, %struct.SMapI { i32 287000000, i32 51 }, %struct.SMapI { i32 290000000, i32 52 }, %struct.SMapI { i32 293000000, i32 53 }, %struct.SMapI { i32 295000000, i32 54 }, %struct.SMapI { i32 297000000, i32 55 }, %struct.SMapI { i32 300000000, i32 56 }, %struct.SMapI { i32 303000000, i32 57 }, %struct.SMapI { i32 305000000, i32 58 }, %struct.SMapI { i32 306000000, i32 59 }, %struct.SMapI { i32 307000000, i32 60 }, %struct.SMapI { i32 310000000, i32 61 }, %struct.SMapI { i32 312000000, i32 62 }, %struct.SMapI { i32 315000000, i32 63 }, %struct.SMapI { i32 318000000, i32 64 }, %struct.SMapI { i32 320000000, i32 65 }, %struct.SMapI { i32 323000000, i32 66 }, %struct.SMapI { i32 324000000, i32 67 }, %struct.SMapI { i32 325000000, i32 68 }, %struct.SMapI { i32 327000000, i32 69 }, %struct.SMapI { i32 331000000, i32 70 }, %struct.SMapI { i32 334000000, i32 71 }, %struct.SMapI { i32 337000000, i32 72 }, %struct.SMapI { i32 339000000, i32 73 }, %struct.SMapI { i32 340000000, i32 74 }, %struct.SMapI { i32 341000000, i32 75 }, %struct.SMapI { i32 343000000, i32 76 }, %struct.SMapI { i32 345000000, i32 77 }, %struct.SMapI { i32 349000000, i32 78 }, %struct.SMapI { i32 352000000, i32 79 }, %struct.SMapI { i32 353000000, i32 80 }, %struct.SMapI { i32 355000000, i32 81 }, %struct.SMapI { i32 357000000, i32 82 }, %struct.SMapI { i32 359000000, i32 83 }, %struct.SMapI { i32 361000000, i32 84 }, %struct.SMapI { i32 362000000, i32 85 }, %struct.SMapI { i32 364000000, i32 86 }, %struct.SMapI { i32 368000000, i32 87 }, %struct.SMapI { i32 370000000, i32 88 }, %struct.SMapI { i32 372000000, i32 89 }, %struct.SMapI { i32 375000000, i32 90 }, %struct.SMapI { i32 376000000, i32 91 }, %struct.SMapI { i32 377000000, i32 92 }, %struct.SMapI { i32 379000000, i32 93 }, %struct.SMapI { i32 382000000, i32 94 }, %struct.SMapI { i32 384000000, i32 95 }, %struct.SMapI { i32 385000000, i32 96 }, %struct.SMapI { i32 386000000, i32 97 }, %struct.SMapI { i32 388000000, i32 98 }, %struct.SMapI { i32 390000000, i32 99 }, %struct.SMapI { i32 393000000, i32 100 }, %struct.SMapI { i32 394000000, i32 101 }, %struct.SMapI { i32 396000000, i32 102 }, %struct.SMapI { i32 397000000, i32 103 }, %struct.SMapI { i32 398000000, i32 104 }, %struct.SMapI { i32 400000000, i32 105 }, %struct.SMapI { i32 402000000, i32 106 }, %struct.SMapI { i32 403000000, i32 107 }, %struct.SMapI { i32 407000000, i32 108 }, %struct.SMapI { i32 408000000, i32 109 }, %struct.SMapI { i32 409000000, i32 110 }, %struct.SMapI { i32 410000000, i32 111 }, %struct.SMapI { i32 411000000, i32 112 }, %struct.SMapI { i32 412000000, i32 113 }, %struct.SMapI { i32 413000000, i32 114 }, %struct.SMapI { i32 414000000, i32 115 }, %struct.SMapI { i32 417000000, i32 116 }, %struct.SMapI { i32 418000000, i32 117 }, %struct.SMapI { i32 420000000, i32 118 }, %struct.SMapI { i32 422000000, i32 119 }, %struct.SMapI { i32 423000000, i32 120 }, %struct.SMapI { i32 424000000, i32 121 }, %struct.SMapI { i32 427000000, i32 122 }, %struct.SMapI { i32 428000000, i32 123 }, %struct.SMapI { i32 429000000, i32 125 }, %struct.SMapI { i32 432000000, i32 127 }, %struct.SMapI { i32 434000000, i32 128 }, %struct.SMapI { i32 435000000, i32 129 }, %struct.SMapI { i32 436000000, i32 131 }, %struct.SMapI { i32 437000000, i32 132 }, %struct.SMapI { i32 438000000, i32 133 }, %struct.SMapI { i32 439000000, i32 134 }, %struct.SMapI { i32 440000000, i32 135 }, %struct.SMapI { i32 441000000, i32 136 }, %struct.SMapI { i32 442000000, i32 137 }, %struct.SMapI { i32 445000000, i32 138 }, %struct.SMapI { i32 446000000, i32 139 }, %struct.SMapI { i32 447000000, i32 140 }, %struct.SMapI { i32 448000000, i32 142 }, %struct.SMapI { i32 449000000, i32 143 }, %struct.SMapI { i32 450000000, i32 144 }, %struct.SMapI { i32 452000000, i32 145 }, %struct.SMapI { i32 453000000, i32 147 }, %struct.SMapI { i32 454000000, i32 148 }, %struct.SMapI { i32 456000000, i32 150 }, %struct.SMapI { i32 457800000, i32 152 }, %struct.SMapI { i32 461000000, i32 17 }, %struct.SMapI { i32 468000000, i32 18 }, %struct.SMapI { i32 472000000, i32 19 }, %struct.SMapI { i32 473000000, i32 20 }, %struct.SMapI { i32 474000000, i32 21 }, %struct.SMapI { i32 481000000, i32 22 }, %struct.SMapI { i32 486000000, i32 23 }, %struct.SMapI { i32 491000000, i32 24 }, %struct.SMapI { i32 498000000, i32 25 }, %struct.SMapI { i32 499000000, i32 26 }, %struct.SMapI { i32 501000000, i32 27 }, %struct.SMapI { i32 506000000, i32 28 }, %struct.SMapI { i32 511000000, i32 29 }, %struct.SMapI { i32 516000000, i32 30 }, %struct.SMapI { i32 520000000, i32 31 }, %struct.SMapI { i32 521000000, i32 32 }, %struct.SMapI { i32 525000000, i32 33 }, %struct.SMapI { i32 529000000, i32 34 }, %struct.SMapI { i32 533000000, i32 35 }, %struct.SMapI { i32 539000000, i32 36 }, %struct.SMapI { i32 541000000, i32 37 }, %struct.SMapI { i32 547000000, i32 38 }, %struct.SMapI { i32 549000000, i32 39 }, %struct.SMapI { i32 551000000, i32 40 }, %struct.SMapI { i32 556000000, i32 41 }, %struct.SMapI { i32 561000000, i32 42 }, %struct.SMapI { i32 563000000, i32 43 }, %struct.SMapI { i32 565000000, i32 44 }, %struct.SMapI { i32 569000000, i32 45 }, %struct.SMapI { i32 571000000, i32 46 }, %struct.SMapI { i32 577000000, i32 47 }, %struct.SMapI { i32 580000000, i32 48 }, %struct.SMapI { i32 582000000, i32 49 }, %struct.SMapI { i32 584000000, i32 50 }, %struct.SMapI { i32 588000000, i32 51 }, %struct.SMapI { i32 591000000, i32 52 }, %struct.SMapI { i32 596000000, i32 53 }, %struct.SMapI { i32 598000000, i32 54 }, %struct.SMapI { i32 603000000, i32 55 }, %struct.SMapI { i32 604000000, i32 56 }, %struct.SMapI { i32 606000000, i32 57 }, %struct.SMapI { i32 612000000, i32 58 }, %struct.SMapI { i32 615000000, i32 59 }, %struct.SMapI { i32 617000000, i32 60 }, %struct.SMapI { i32 621000000, i32 61 }, %struct.SMapI { i32 622000000, i32 62 }, %struct.SMapI { i32 625000000, i32 63 }, %struct.SMapI { i32 632000000, i32 64 }, %struct.SMapI { i32 633000000, i32 65 }, %struct.SMapI { i32 634000000, i32 66 }, %struct.SMapI { i32 642000000, i32 67 }, %struct.SMapI { i32 643000000, i32 68 }, %struct.SMapI { i32 647000000, i32 69 }, %struct.SMapI { i32 650000000, i32 70 }, %struct.SMapI { i32 652000000, i32 71 }, %struct.SMapI { i32 657000000, i32 72 }, %struct.SMapI { i32 661000000, i32 73 }, %struct.SMapI { i32 662000000, i32 74 }, %struct.SMapI { i32 665000000, i32 75 }, %struct.SMapI { i32 667000000, i32 76 }, %struct.SMapI { i32 670000000, i32 77 }, %struct.SMapI { i32 673000000, i32 78 }, %struct.SMapI { i32 676000000, i32 79 }, %struct.SMapI { i32 677000000, i32 80 }, %struct.SMapI { i32 681000000, i32 81 }, %struct.SMapI { i32 683000000, i32 82 }, %struct.SMapI { i32 686000000, i32 83 }, %struct.SMapI { i32 688000000, i32 84 }, %struct.SMapI { i32 689000000, i32 85 }, %struct.SMapI { i32 691000000, i32 86 }, %struct.SMapI { i32 695000000, i32 87 }, %struct.SMapI { i32 698000000, i32 88 }, %struct.SMapI { i32 703000000, i32 89 }, %struct.SMapI { i32 704000000, i32 90 }, %struct.SMapI { i32 705000000, i32 91 }, %struct.SMapI { i32 707000000, i32 92 }, %struct.SMapI { i32 710000000, i32 93 }, %struct.SMapI { i32 712000000, i32 94 }, %struct.SMapI { i32 717000000, i32 95 }, %struct.SMapI { i32 718000000, i32 96 }, %struct.SMapI { i32 721000000, i32 97 }, %struct.SMapI { i32 722000000, i32 98 }, %struct.SMapI { i32 723000000, i32 99 }, %struct.SMapI { i32 725000000, i32 100 }, %struct.SMapI { i32 727000000, i32 101 }, %struct.SMapI { i32 730000000, i32 102 }, %struct.SMapI { i32 732000000, i32 103 }, %struct.SMapI { i32 735000000, i32 104 }, %struct.SMapI { i32 740000000, i32 105 }, %struct.SMapI { i32 741000000, i32 106 }, %struct.SMapI { i32 742000000, i32 107 }, %struct.SMapI { i32 743000000, i32 108 }, %struct.SMapI { i32 745000000, i32 109 }, %struct.SMapI { i32 747000000, i32 110 }, %struct.SMapI { i32 748000000, i32 111 }, %struct.SMapI { i32 750000000, i32 112 }, %struct.SMapI { i32 752000000, i32 113 }, %struct.SMapI { i32 754000000, i32 114 }, %struct.SMapI { i32 757000000, i32 115 }, %struct.SMapI { i32 758000000, i32 116 }, %struct.SMapI { i32 760000000, i32 117 }, %struct.SMapI { i32 763000000, i32 118 }, %struct.SMapI { i32 764000000, i32 119 }, %struct.SMapI { i32 766000000, i32 120 }, %struct.SMapI { i32 767000000, i32 121 }, %struct.SMapI { i32 768000000, i32 122 }, %struct.SMapI { i32 773000000, i32 123 }, %struct.SMapI { i32 774000000, i32 124 }, %struct.SMapI { i32 776000000, i32 125 }, %struct.SMapI { i32 777000000, i32 126 }, %struct.SMapI { i32 778000000, i32 127 }, %struct.SMapI { i32 779000000, i32 128 }, %struct.SMapI { i32 781000000, i32 129 }, %struct.SMapI { i32 783000000, i32 130 }, %struct.SMapI { i32 784000000, i32 131 }, %struct.SMapI { i32 785000000, i32 132 }, %struct.SMapI { i32 786000000, i32 133 }, %struct.SMapI { i32 793000000, i32 134 }, %struct.SMapI { i32 794000000, i32 135 }, %struct.SMapI { i32 795000000, i32 136 }, %struct.SMapI { i32 797000000, i32 137 }, %struct.SMapI { i32 799000000, i32 138 }, %struct.SMapI { i32 801000000, i32 139 }, %struct.SMapI { i32 802000000, i32 140 }, %struct.SMapI { i32 803000000, i32 141 }, %struct.SMapI { i32 804000000, i32 142 }, %struct.SMapI { i32 810000000, i32 144 }, %struct.SMapI { i32 811000000, i32 145 }, %struct.SMapI { i32 812000000, i32 146 }, %struct.SMapI { i32 814000000, i32 147 }, %struct.SMapI { i32 816000000, i32 148 }, %struct.SMapI { i32 817000000, i32 150 }, %struct.SMapI { i32 818000000, i32 151 }, %struct.SMapI { i32 820000000, i32 152 }, %struct.SMapI { i32 821000000, i32 153 }, %struct.SMapI { i32 822000000, i32 154 }, %struct.SMapI { i32 828000000, i32 155 }, %struct.SMapI { i32 829000000, i32 157 }, %struct.SMapI { i32 830000000, i32 159 }, %struct.SMapI { i32 831000000, i32 160 }, %struct.SMapI { i32 833000000, i32 161 }, %struct.SMapI { i32 835000000, i32 162 }, %struct.SMapI { i32 836000000, i32 163 }, %struct.SMapI { i32 837000000, i32 164 }, %struct.SMapI { i32 838000000, i32 166 }, %struct.SMapI { i32 840000000, i32 168 }, %struct.SMapI { i32 842000000, i32 169 }, %struct.SMapI { i32 845000000, i32 170 }, %struct.SMapI { i32 846000000, i32 171 }, %struct.SMapI { i32 847000000, i32 173 }, %struct.SMapI { i32 848000000, i32 174 }, %struct.SMapI { i32 852000000, i32 175 }, %struct.SMapI { i32 853000000, i32 176 }, %struct.SMapI { i32 858000000, i32 177 }, %struct.SMapI { i32 860000000, i32 178 }, %struct.SMapI { i32 861000000, i32 179 }, %struct.SMapI { i32 862000000, i32 180 }, %struct.SMapI { i32 863000000, i32 182 }, %struct.SMapI { i32 864000000, i32 184 }, %struct.SMapI { i32 865000000, i32 185 }, %struct.SMapI zeroinitializer], [880 x i8] zeroinitializer }, align 32
@m_RF_Band_Map = internal constant { [7 x %struct.SRFBandMap], [48 x i8] } { [7 x %struct.SRFBandMap] [%struct.SRFBandMap { i32 47900000, i32 46000000, i32 0, i32 0 }, %struct.SRFBandMap { i32 61100000, i32 52200000, i32 0, i32 0 }, %struct.SRFBandMap { i32 152600000, i32 70100000, i32 136800000, i32 0 }, %struct.SRFBandMap { i32 164700000, i32 156700000, i32 0, i32 0 }, %struct.SRFBandMap { i32 203500000, i32 186250000, i32 0, i32 0 }, %struct.SRFBandMap { i32 457800000, i32 230000000, i32 345000000, i32 426000000 }, %struct.SRFBandMap { i32 865000000, i32 489500000, i32 697500000, i32 842000000 }], [48 x i8] zeroinitializer }, align 32
@m_RF_Cal_DC_Over_DT_Map = internal constant { [102 x %struct.SMap], [208 x i8] } { [102 x %struct.SMap] [%struct.SMap { i32 47900000, i8 0 }, %struct.SMap { i32 55000000, i8 0 }, %struct.SMap { i32 61100000, i8 10 }, %struct.SMap { i32 64000000, i8 10 }, %struct.SMap { i32 82000000, i8 20 }, %struct.SMap { i32 84000000, i8 25 }, %struct.SMap { i32 119000000, i8 28 }, %struct.SMap { i32 124000000, i8 32 }, %struct.SMap { i32 129000000, i8 42 }, %struct.SMap { i32 134000000, i8 50 }, %struct.SMap { i32 139000000, i8 57 }, %struct.SMap { i32 144000000, i8 62 }, %struct.SMap { i32 149000000, i8 63 }, %struct.SMap { i32 152600000, i8 64 }, %struct.SMap { i32 154000000, i8 64 }, %struct.SMap { i32 164700000, i8 65 }, %struct.SMap { i32 203500000, i8 50 }, %struct.SMap { i32 353000000, i8 25 }, %struct.SMap { i32 356000000, i8 26 }, %struct.SMap { i32 359000000, i8 27 }, %struct.SMap { i32 363000000, i8 28 }, %struct.SMap { i32 366000000, i8 29 }, %struct.SMap { i32 369000000, i8 30 }, %struct.SMap { i32 373000000, i8 31 }, %struct.SMap { i32 376000000, i8 32 }, %struct.SMap { i32 379000000, i8 33 }, %struct.SMap { i32 383000000, i8 34 }, %struct.SMap { i32 386000000, i8 35 }, %struct.SMap { i32 389000000, i8 36 }, %struct.SMap { i32 393000000, i8 37 }, %struct.SMap { i32 396000000, i8 38 }, %struct.SMap { i32 399000000, i8 39 }, %struct.SMap { i32 402000000, i8 40 }, %struct.SMap { i32 404000000, i8 41 }, %struct.SMap { i32 407000000, i8 42 }, %struct.SMap { i32 409000000, i8 43 }, %struct.SMap { i32 412000000, i8 44 }, %struct.SMap { i32 414000000, i8 45 }, %struct.SMap { i32 417000000, i8 46 }, %struct.SMap { i32 419000000, i8 47 }, %struct.SMap { i32 422000000, i8 48 }, %struct.SMap { i32 424000000, i8 49 }, %struct.SMap { i32 427000000, i8 50 }, %struct.SMap { i32 429000000, i8 51 }, %struct.SMap { i32 432000000, i8 52 }, %struct.SMap { i32 434000000, i8 53 }, %struct.SMap { i32 437000000, i8 54 }, %struct.SMap { i32 439000000, i8 55 }, %struct.SMap { i32 442000000, i8 56 }, %struct.SMap { i32 444000000, i8 57 }, %struct.SMap { i32 447000000, i8 58 }, %struct.SMap { i32 449000000, i8 59 }, %struct.SMap { i32 457800000, i8 60 }, %struct.SMap { i32 465000000, i8 15 }, %struct.SMap { i32 477000000, i8 18 }, %struct.SMap { i32 483000000, i8 20 }, %struct.SMap { i32 502000000, i8 25 }, %struct.SMap { i32 508000000, i8 27 }, %struct.SMap { i32 519000000, i8 28 }, %struct.SMap { i32 522000000, i8 29 }, %struct.SMap { i32 524000000, i8 30 }, %struct.SMap { i32 534000000, i8 31 }, %struct.SMap { i32 549000000, i8 32 }, %struct.SMap { i32 554000000, i8 34 }, %struct.SMap { i32 584000000, i8 36 }, %struct.SMap { i32 589000000, i8 38 }, %struct.SMap { i32 658000000, i8 39 }, %struct.SMap { i32 664000000, i8 44 }, %struct.SMap { i32 669000000, i8 45 }, %struct.SMap { i32 699000000, i8 46 }, %struct.SMap { i32 704000000, i8 48 }, %struct.SMap { i32 709000000, i8 49 }, %struct.SMap { i32 714000000, i8 50 }, %struct.SMap { i32 724000000, i8 51 }, %struct.SMap { i32 729000000, i8 54 }, %struct.SMap { i32 739000000, i8 56 }, %struct.SMap { i32 744000000, i8 57 }, %struct.SMap { i32 749000000, i8 59 }, %struct.SMap { i32 754000000, i8 60 }, %struct.SMap { i32 759000000, i8 61 }, %struct.SMap { i32 764000000, i8 62 }, %struct.SMap { i32 769000000, i8 63 }, %struct.SMap { i32 774000000, i8 64 }, %struct.SMap { i32 779000000, i8 65 }, %struct.SMap { i32 784000000, i8 67 }, %struct.SMap { i32 789000000, i8 70 }, %struct.SMap { i32 794000000, i8 72 }, %struct.SMap { i32 799000000, i8 75 }, %struct.SMap { i32 804000000, i8 79 }, %struct.SMap { i32 809000000, i8 84 }, %struct.SMap { i32 814000000, i8 89 }, %struct.SMap { i32 819000000, i8 93 }, %struct.SMap { i32 824000000, i8 97 }, %struct.SMap { i32 829000000, i8 104 }, %struct.SMap { i32 834000000, i8 110 }, %struct.SMap { i32 839000000, i8 117 }, %struct.SMap { i32 844000000, i8 126 }, %struct.SMap { i32 849000000, i8 -126 }, %struct.SMap { i32 854000000, i8 -124 }, %struct.SMap { i32 859000000, i8 -113 }, %struct.SMap { i32 865000000, i8 -102 }, %struct.SMap zeroinitializer], [208 x i8] zeroinitializer }, align 32
@m_Thermometer_Map_2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\\^b`jhdfzxtvlnrp", [16 x i8] zeroinitializer }, align 32
@m_Thermometer_Map_1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"<>B@JHDFZXTVLNRP", [16 x i8] zeroinitializer }, align 32
@m_StandardTable = internal constant { [19 x %struct.SStandardParam], [60 x i8] } { [19 x %struct.SStandardParam] [%struct.SStandardParam zeroinitializer, %struct.SStandardParam { i32 6000000, i32 7000000, i8 29, i8 44 }, %struct.SStandardParam { i32 6900000, i32 8000000, i8 30, i8 44 }, %struct.SStandardParam { i32 7100000, i32 8000000, i8 30, i8 44 }, %struct.SStandardParam { i32 7250000, i32 8000000, i8 30, i8 44 }, %struct.SStandardParam { i32 6900000, i32 8000000, i8 30, i8 44 }, %struct.SStandardParam { i32 1250000, i32 8000000, i8 30, i8 44 }, %struct.SStandardParam { i32 5400000, i32 6000000, i8 28, i8 44 }, %struct.SStandardParam { i32 1250000, i32 500000, i8 24, i8 44 }, %struct.SStandardParam zeroinitializer, %struct.SStandardParam { i32 3300000, i32 6000000, i8 28, i8 88 }, %struct.SStandardParam { i32 3500000, i32 7000000, i8 28, i8 55 }, %struct.SStandardParam { i32 4000000, i32 8000000, i8 29, i8 55 }, %struct.SStandardParam zeroinitializer, %struct.SStandardParam { i32 5000000, i32 6000000, i8 28, i8 55 }, %struct.SStandardParam { i32 4000000, i32 6000000, i8 29, i8 88 }, %struct.SStandardParam { i32 4500000, i32 7000000, i8 30, i8 55 }, %struct.SStandardParam { i32 5000000, i32 8000000, i8 31, i8 55 }, %struct.SStandardParam zeroinitializer], [60 x i8] zeroinitializer }, align 32
@m_BP_Filter_Map = internal constant { [8 x %struct.SMap], [32 x i8] } { [8 x %struct.SMap] [%struct.SMap { i32 62000000, i8 0 }, %struct.SMap { i32 84000000, i8 1 }, %struct.SMap { i32 100000000, i8 2 }, %struct.SMap { i32 140000000, i8 3 }, %struct.SMap { i32 170000000, i8 4 }, %struct.SMap { i32 180000000, i8 5 }, %struct.SMap { i32 865000000, i8 6 }, %struct.SMap zeroinitializer], [32 x i8] zeroinitializer }, align 32
@m_GainTaper_Map = internal constant { [86 x %struct.SMap], [176 x i8] } { [86 x %struct.SMap] [%struct.SMap { i32 45400000, i8 31 }, %struct.SMap { i32 45800000, i8 30 }, %struct.SMap { i32 46200000, i8 29 }, %struct.SMap { i32 46700000, i8 28 }, %struct.SMap { i32 47100000, i8 27 }, %struct.SMap { i32 47500000, i8 26 }, %struct.SMap { i32 47900000, i8 25 }, %struct.SMap { i32 49600000, i8 23 }, %struct.SMap { i32 51200000, i8 22 }, %struct.SMap { i32 52900000, i8 21 }, %struct.SMap { i32 54500000, i8 20 }, %struct.SMap { i32 56200000, i8 19 }, %struct.SMap { i32 57800000, i8 18 }, %struct.SMap { i32 59500000, i8 17 }, %struct.SMap { i32 61100000, i8 16 }, %struct.SMap { i32 67600000, i8 13 }, %struct.SMap { i32 74200000, i8 12 }, %struct.SMap { i32 80700000, i8 11 }, %struct.SMap { i32 87200000, i8 10 }, %struct.SMap { i32 93800000, i8 9 }, %struct.SMap { i32 100300000, i8 8 }, %struct.SMap { i32 106900000, i8 7 }, %struct.SMap { i32 113400000, i8 6 }, %struct.SMap { i32 119900000, i8 5 }, %struct.SMap { i32 126500000, i8 4 }, %struct.SMap { i32 133000000, i8 3 }, %struct.SMap { i32 139500000, i8 2 }, %struct.SMap { i32 146100000, i8 1 }, %struct.SMap { i32 152600000, i8 0 }, %struct.SMap { i32 154300000, i8 31 }, %struct.SMap { i32 156100000, i8 30 }, %struct.SMap { i32 157800000, i8 29 }, %struct.SMap { i32 159500000, i8 28 }, %struct.SMap { i32 161200000, i8 27 }, %struct.SMap { i32 163000000, i8 26 }, %struct.SMap { i32 164700000, i8 25 }, %struct.SMap { i32 170200000, i8 23 }, %struct.SMap { i32 175800000, i8 22 }, %struct.SMap { i32 181300000, i8 21 }, %struct.SMap { i32 186900000, i8 20 }, %struct.SMap { i32 192400000, i8 19 }, %struct.SMap { i32 198000000, i8 18 }, %struct.SMap { i32 203500000, i8 17 }, %struct.SMap { i32 216200000, i8 20 }, %struct.SMap { i32 228900000, i8 19 }, %struct.SMap { i32 241600000, i8 18 }, %struct.SMap { i32 254400000, i8 17 }, %struct.SMap { i32 267100000, i8 16 }, %struct.SMap { i32 279800000, i8 15 }, %struct.SMap { i32 292500000, i8 14 }, %struct.SMap { i32 305200000, i8 13 }, %struct.SMap { i32 317900000, i8 12 }, %struct.SMap { i32 330700000, i8 11 }, %struct.SMap { i32 343400000, i8 10 }, %struct.SMap { i32 356100000, i8 9 }, %struct.SMap { i32 368800000, i8 8 }, %struct.SMap { i32 381500000, i8 7 }, %struct.SMap { i32 394200000, i8 6 }, %struct.SMap { i32 406900000, i8 5 }, %struct.SMap { i32 419700000, i8 4 }, %struct.SMap { i32 432400000, i8 3 }, %struct.SMap { i32 445100000, i8 2 }, %struct.SMap { i32 457800000, i8 1 }, %struct.SMap { i32 476300000, i8 25 }, %struct.SMap { i32 494800000, i8 24 }, %struct.SMap { i32 513300000, i8 23 }, %struct.SMap { i32 531800000, i8 22 }, %struct.SMap { i32 550300000, i8 21 }, %struct.SMap { i32 568900000, i8 20 }, %struct.SMap { i32 587400000, i8 19 }, %struct.SMap { i32 605900000, i8 18 }, %struct.SMap { i32 624400000, i8 17 }, %struct.SMap { i32 642900000, i8 16 }, %struct.SMap { i32 661400000, i8 15 }, %struct.SMap { i32 679900000, i8 14 }, %struct.SMap { i32 698400000, i8 13 }, %struct.SMap { i32 716900000, i8 12 }, %struct.SMap { i32 735400000, i8 11 }, %struct.SMap { i32 753900000, i8 10 }, %struct.SMap { i32 772500000, i8 9 }, %struct.SMap { i32 791000000, i8 8 }, %struct.SMap { i32 809500000, i8 7 }, %struct.SMap { i32 828000000, i8 6 }, %struct.SMap { i32 846500000, i8 5 }, %struct.SMap { i32 865000000, i8 4 }, %struct.SMap zeroinitializer], [176 x i8] zeroinitializer }, align 32
@m_IR_Meas_Map = internal constant { [4 x %struct.SMap], [32 x i8] } { [4 x %struct.SMap] [%struct.SMap { i32 200000000, i8 5 }, %struct.SMap { i32 400000000, i8 6 }, %struct.SMap { i32 865000000, i8 7 }, %struct.SMap zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ChannelConfiguration._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 990, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013tda18271c2dd: %s SearchMap failed\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ChannelConfiguration\00", [43 x i8] zeroinitializer }, align 32
@ChannelConfiguration._entry_ptr = internal global ptr @ChannelConfiguration._entry, section ".printk_index", align 4
@m_Cal_PLL_Map = internal constant { [35 x %struct.SMap2], [72 x i8] } { [35 x %struct.SMap2] [%struct.SMap2 { i32 33813000, i8 -35, i8 -48 }, %struct.SMap2 { i32 36625000, i8 -36, i8 -64 }, %struct.SMap2 { i32 39938000, i8 -37, i8 -80 }, %struct.SMap2 { i32 43938000, i8 -38, i8 -96 }, %struct.SMap2 { i32 48813000, i8 -39, i8 -112 }, %struct.SMap2 { i32 54938000, i8 -40, i8 -128 }, %struct.SMap2 { i32 62813000, i8 -45, i8 112 }, %struct.SMap2 { i32 67625000, i8 -51, i8 104 }, %struct.SMap2 { i32 73250000, i8 -52, i8 96 }, %struct.SMap2 { i32 79875000, i8 -53, i8 88 }, %struct.SMap2 { i32 87875000, i8 -54, i8 80 }, %struct.SMap2 { i32 97625000, i8 -55, i8 72 }, %struct.SMap2 { i32 109875000, i8 -56, i8 64 }, %struct.SMap2 { i32 125625000, i8 -61, i8 56 }, %struct.SMap2 { i32 135250000, i8 -67, i8 52 }, %struct.SMap2 { i32 146500000, i8 -68, i8 48 }, %struct.SMap2 { i32 159750000, i8 -69, i8 44 }, %struct.SMap2 { i32 175750000, i8 -70, i8 40 }, %struct.SMap2 { i32 195250000, i8 -71, i8 36 }, %struct.SMap2 { i32 219750000, i8 -72, i8 32 }, %struct.SMap2 { i32 251250000, i8 -77, i8 28 }, %struct.SMap2 { i32 270500000, i8 -83, i8 26 }, %struct.SMap2 { i32 293000000, i8 -84, i8 24 }, %struct.SMap2 { i32 319500000, i8 -85, i8 22 }, %struct.SMap2 { i32 351500000, i8 -86, i8 20 }, %struct.SMap2 { i32 390500000, i8 -87, i8 18 }, %struct.SMap2 { i32 439500000, i8 -88, i8 16 }, %struct.SMap2 { i32 502500000, i8 -93, i8 14 }, %struct.SMap2 { i32 541000000, i8 -99, i8 13 }, %struct.SMap2 { i32 586000000, i8 -100, i8 12 }, %struct.SMap2 { i32 639000000, i8 -101, i8 11 }, %struct.SMap2 { i32 703000000, i8 -102, i8 10 }, %struct.SMap2 { i32 781000000, i8 -103, i8 9 }, %struct.SMap2 { i32 879000000, i8 -104, i8 8 }, %struct.SMap2 zeroinitializer], [72 x i8] zeroinitializer }, align 32
@m_Main_PLL_Map = internal constant { [41 x %struct.SMap2], [88 x i8] } { [41 x %struct.SMap2] [%struct.SMap2 { i32 33125000, i8 87, i8 -16 }, %struct.SMap2 { i32 35500000, i8 86, i8 -32 }, %struct.SMap2 { i32 38188000, i8 85, i8 -48 }, %struct.SMap2 { i32 41375000, i8 84, i8 -64 }, %struct.SMap2 { i32 45125000, i8 83, i8 -80 }, %struct.SMap2 { i32 49688000, i8 82, i8 -96 }, %struct.SMap2 { i32 55188000, i8 81, i8 -112 }, %struct.SMap2 { i32 62125000, i8 80, i8 -128 }, %struct.SMap2 { i32 66250000, i8 71, i8 120 }, %struct.SMap2 { i32 71000000, i8 70, i8 112 }, %struct.SMap2 { i32 76375000, i8 69, i8 104 }, %struct.SMap2 { i32 82750000, i8 68, i8 96 }, %struct.SMap2 { i32 90250000, i8 67, i8 88 }, %struct.SMap2 { i32 99375000, i8 66, i8 80 }, %struct.SMap2 { i32 110375000, i8 65, i8 72 }, %struct.SMap2 { i32 124250000, i8 64, i8 64 }, %struct.SMap2 { i32 132500000, i8 55, i8 60 }, %struct.SMap2 { i32 142000000, i8 54, i8 56 }, %struct.SMap2 { i32 152750000, i8 53, i8 52 }, %struct.SMap2 { i32 165500000, i8 52, i8 48 }, %struct.SMap2 { i32 180500000, i8 51, i8 44 }, %struct.SMap2 { i32 198750000, i8 50, i8 40 }, %struct.SMap2 { i32 220750000, i8 49, i8 36 }, %struct.SMap2 { i32 248500000, i8 48, i8 32 }, %struct.SMap2 { i32 265000000, i8 39, i8 30 }, %struct.SMap2 { i32 284000000, i8 38, i8 28 }, %struct.SMap2 { i32 305500000, i8 37, i8 26 }, %struct.SMap2 { i32 331000000, i8 36, i8 24 }, %struct.SMap2 { i32 361000000, i8 35, i8 22 }, %struct.SMap2 { i32 397500000, i8 34, i8 20 }, %struct.SMap2 { i32 441500000, i8 33, i8 18 }, %struct.SMap2 { i32 497000000, i8 32, i8 16 }, %struct.SMap2 { i32 530000000, i8 23, i8 15 }, %struct.SMap2 { i32 568000000, i8 22, i8 14 }, %struct.SMap2 { i32 611000000, i8 21, i8 13 }, %struct.SMap2 { i32 662000000, i8 20, i8 12 }, %struct.SMap2 { i32 722000000, i8 19, i8 11 }, %struct.SMap2 { i32 795000000, i8 18, i8 10 }, %struct.SMap2 { i32 883000000, i8 17, i8 9 }, %struct.SMap2 { i32 994000000, i8 16, i8 8 }, %struct.SMap2 zeroinitializer], [88 x i8] zeroinitializer }, align 32
@FixedContentsI2CUpdate.InitRegs = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\08\80\C6\DF\16`\80\80\00\00\00\00\00\00\00\FC\01\84A\01\84@\07\00\00\96?\C1\00\8F\00\00\8C\00 \B3H\B0", [58 x i8] zeroinitializer }, align 32
@m_CID_Target_Map = internal constant { [13 x %struct.SMap2], [56 x i8] } { [13 x %struct.SMap2] [%struct.SMap2 { i32 46000000, i8 4, i8 18 }, %struct.SMap2 { i32 52200000, i8 10, i8 15 }, %struct.SMap2 { i32 70100000, i8 1, i8 40 }, %struct.SMap2 { i32 136800000, i8 24, i8 40 }, %struct.SMap2 { i32 156700000, i8 24, i8 40 }, %struct.SMap2 { i32 186250000, i8 10, i8 40 }, %struct.SMap2 { i32 230000000, i8 10, i8 40 }, %struct.SMap2 { i32 345000000, i8 24, i8 40 }, %struct.SMap2 { i32 426000000, i8 14, i8 40 }, %struct.SMap2 { i32 489500000, i8 30, i8 40 }, %struct.SMap2 { i32 697500000, i8 50, i8 40 }, %struct.SMap2 { i32 842000000, i8 58, i8 40 }, %struct.SMap2 zeroinitializer], [56 x i8] zeroinitializer }, align 32
@PowerScan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 602, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013tda18271c2dd: %s Search map failed\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PowerScan\00", [22 x i8] zeroinitializer }, align 32
@PowerScan._entry_ptr = internal global ptr @PowerScan._entry, section ".printk_index", align 4
@m_KM_Map = internal constant { [6 x %struct.SMap2], [48 x i8] } { [6 x %struct.SMap2] [%struct.SMap2 { i32 47900000, i8 3, i8 2 }, %struct.SMap2 { i32 61100000, i8 3, i8 1 }, %struct.SMap2 { i32 350000000, i8 3, i8 0 }, %struct.SMap2 { i32 720000000, i8 2, i8 1 }, %struct.SMap2 { i32 865000000, i8 3, i8 3 }, %struct.SMap2 zeroinitializer], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 3, i64 16, i64 18]
@__sancov_gen_cov_switch_values.10 = internal global [5 x i64] [i64 3, i64 32, i64 6000000, i64 7000000, i64 8000000]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 6, i64 8, i64 32]
@___asan_gen_.12 = private unnamed_addr constant [10 x i8] c"tuner_ops\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 1198, i32 35 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 118, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 130, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant [13 x i8] c"m_RF_Cal_Map\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 42, i32 27 }
@___asan_gen_.42 = private unnamed_addr constant [14 x i8] c"m_RF_Band_Map\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 793, i32 33 }
@___asan_gen_.45 = private unnamed_addr constant [24 x i8] c"m_RF_Cal_DC_Over_DT_Map\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 664, i32 26 }
@___asan_gen_.48 = private unnamed_addr constant [20 x i8] c"m_Thermometer_Map_2\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 810, i32 11 }
@___asan_gen_.51 = private unnamed_addr constant [20 x i8] c"m_Thermometer_Map_1\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 803, i32 11 }
@___asan_gen_.54 = private unnamed_addr constant [16 x i8] c"m_StandardTable\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 9, i32 36 }
@___asan_gen_.57 = private unnamed_addr constant [16 x i8] c"m_BP_Filter_Map\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 31, i32 27 }
@___asan_gen_.60 = private unnamed_addr constant [16 x i8] c"m_GainTaper_Map\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 575, i32 27 }
@___asan_gen_.63 = private unnamed_addr constant [14 x i8] c"m_IR_Meas_Map\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 770, i32 27 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 990, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [14 x i8] c"m_Cal_PLL_Map\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 537, i32 27 }
@___asan_gen_.78 = private unnamed_addr constant [15 x i8] c"m_Main_PLL_Map\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 493, i32 27 }
@___asan_gen_.81 = private unnamed_addr constant [9 x i8] c"InitRegs\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 733, i32 12 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"m_CID_Target_Map\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 777, i32 27 }
@___asan_gen_.87 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.94 = private constant [46 x i8] c"../drivers/media/dvb-frontends/tda18271c2dd.c\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 602, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant [9 x i8] c"m_KM_Map\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [51 x i8] c"../drivers/media/dvb-frontends/tda18271c2dd_maps.h\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 484, i32 28 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @ChannelConfiguration._entry, ptr @ChannelConfiguration._entry_ptr, ptr @PowerScan._entry, ptr @PowerScan._entry_ptr, ptr @WriteRegs._entry, ptr @WriteRegs._entry_ptr, ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__ksymtab_tda18271c2dd_attach, ptr @i2c_write._entry, ptr @i2c_write._entry_ptr, ptr @tuner_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @m_RF_Cal_Map, ptr @m_RF_Band_Map, ptr @m_RF_Cal_DC_Over_DT_Map, ptr @m_Thermometer_Map_2, ptr @m_Thermometer_Map_1, ptr @m_StandardTable, ptr @m_BP_Filter_Map, ptr @m_GainTaper_Map, ptr @m_IR_Meas_Map, ptr @.str.6, ptr @.str.7, ptr @m_Cal_PLL_Map, ptr @m_Main_PLL_Map, ptr @FixedContentsI2CUpdate.InitRegs, ptr @m_CID_Target_Map, ptr @.str.8, ptr @.str.9, ptr @m_KM_Map], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_ops to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @WriteRegs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m_RF_Cal_Map to i32), i32 3504, i32 4384, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m_RF_Band_Map to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m_RF_Cal_DC_Over_DT_Map to i32), i32 816, i32 1024, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m_Thermometer_Map_2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m_Thermometer_Map_1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m_StandardTable to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m_BP_Filter_Map to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m_GainTaper_Map to i32), i32 688, i32 864, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m_IR_Meas_Map to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ChannelConfiguration._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m_Cal_PLL_Map to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m_Main_PLL_Map to i32), i32 328, i32 416, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @FixedContentsI2CUpdate.InitRegs to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m_CID_Target_Map to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @PowerScan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m_KM_Map to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tda18271c2dd_attach(ptr noundef writeonly %fe, ptr noundef %i2c, i8 noundef zeroext %adr) #0 align 64 {
entry:
  %msg.i.i.i121.i = alloca %struct.i2c_msg, align 4
  %data.i.i122.i = alloca [64 x i8], align 1
  %msg.i.i.i107.i = alloca %struct.i2c_msg, align 4
  %msg.i.i108.i = alloca [2 x i8], align 1
  %msg.i.i.i92.i = alloca %struct.i2c_msg, align 4
  %data.i.i93.i = alloca [64 x i8], align 1
  %msg.i.i.i78.i = alloca %struct.i2c_msg, align 4
  %msg.i.i79.i = alloca [2 x i8], align 1
  %msg.i.i.i63.i = alloca %struct.i2c_msg, align 4
  %data.i.i64.i = alloca [64 x i8], align 1
  %msg.i.i.i49.i = alloca %struct.i2c_msg, align 4
  %msg.i.i50.i = alloca [2 x i8], align 1
  %msg.i.i.i36.i = alloca %struct.i2c_msg, align 4
  %data.i.i.i = alloca [64 x i8], align 1
  %msg.i.i.i22.i = alloca %struct.i2c_msg, align 4
  %msg.i.i23.i = alloca [2 x i8], align 1
  %msg.i.i.i8.i = alloca %struct.i2c_msg, align 4
  %msg.i.i9.i = alloca [2 x i8], align 1
  %msg.i.i.i6.i = alloca %struct.i2c_msg, align 4
  %msg.i.i.i = alloca [2 x i8], align 1
  %msg.i.i.i69.i.i.i = alloca %struct.i2c_msg, align 4
  %data.i.i70.i.i.i = alloca [64 x i8], align 1
  %msg.i.i.i57.i.i.i = alloca %struct.i2c_msg, align 4
  %msg.i.i.i.i1.i = alloca [2 x i8], align 1
  %msg.i.i.i.i.i.i = alloca %struct.i2c_msg, align 4
  %data.i.i.i.i.i = alloca [64 x i8], align 1
  %msg.i.i.i326.i.i = alloca %struct.i2c_msg, align 4
  %msg.i.i327.i.i = alloca [2 x i8], align 1
  %msg.i.i.i312.i.i = alloca %struct.i2c_msg, align 4
  %data.i.i313.i.i = alloca [64 x i8], align 1
  %msg.i.i.i298.i.i = alloca %struct.i2c_msg, align 4
  %msg.i.i299.i.i = alloca [2 x i8], align 1
  %msg.i.i.i284.i.i = alloca %struct.i2c_msg, align 4
  %data.i.i285.i.i = alloca [64 x i8], align 1
  %msg.i.i.i270.i.i = alloca %struct.i2c_msg, align 4
  %msg.i.i271.i.i = alloca [2 x i8], align 1
  %msg.i.i.i256.i.i = alloca %struct.i2c_msg, align 4
  %msg.i.i257.i.i = alloca [2 x i8], align 1
  %msg.i.i.i242.i.i = alloca %struct.i2c_msg, align 4
  %msg.i.i243.i.i = alloca [2 x i8], align 1
  %msg.i.i.i230.i.i = alloca %struct.i2c_msg, align 4
  %msg.i.i.i.i = alloca [2 x i8], align 1
  %msg.i.i.i.i.i = alloca %struct.i2c_msg, align 4
  %data.i.i.i.i = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 268) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %1 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %tuner_priv, align 4
  %adr1 = getelementptr inbounds %struct.tda_state, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %adr1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %adr, ptr %adr1, align 4
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %i2c, ptr %call7.i.i, align 8
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32
  %4 = call ptr @memcpy(ptr %tuner_ops, ptr @tuner_ops, i32 220)
  %m_Frequency.i = getelementptr inbounds %struct.tda_state, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %m_Frequency.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %m_Frequency.i, align 8
  %m_SettlingTime.i = getelementptr inbounds %struct.tda_state, ptr %call7.i.i, i32 0, i32 11
  %m_IFLevelAnalog.i = getelementptr inbounds %struct.tda_state, ptr %call7.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %m_IFLevelAnalog.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %m_IFLevelAnalog.i, align 8
  %m_IFLevelDigital.i = getelementptr inbounds %struct.tda_state, ptr %call7.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %m_IFLevelDigital.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 8, ptr %m_IFLevelDigital.i, align 1
  %m_IFLevelDVBC.i = getelementptr inbounds %struct.tda_state, ptr %call7.i.i, i32 0, i32 6
  %8 = ptrtoint ptr %m_IFLevelDVBC.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 28, ptr %m_IFLevelDVBC.i, align 2
  %m_IFLevelDVBT.i = getelementptr inbounds %struct.tda_state, ptr %call7.i.i, i32 0, i32 7
  %9 = ptrtoint ptr %m_IFLevelDVBT.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 24, ptr %m_IFLevelDVBT.i, align 1
  %m_EP4.i = getelementptr inbounds %struct.tda_state, ptr %call7.i.i, i32 0, i32 8
  %10 = ptrtoint ptr %m_EP4.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 32, ptr %m_EP4.i, align 4
  %m_EP3_Standby.i = getelementptr inbounds %struct.tda_state, ptr %call7.i.i, i32 0, i32 9
  %11 = ptrtoint ptr %m_EP3_Standby.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -49, ptr %m_EP3_Standby.i, align 1
  %m_bMaster.i = getelementptr inbounds %struct.tda_state, ptr %call7.i.i, i32 0, i32 10
  %12 = ptrtoint ptr %m_bMaster.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %m_bMaster.i, align 2
  %13 = ptrtoint ptr %m_SettlingTime.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 100, ptr %m_SettlingTime.i, align 8
  %m_bFMInput.i = getelementptr inbounds %struct.tda_state, ptr %call7.i.i, i32 0, i32 21
  %14 = ptrtoint ptr %m_bFMInput.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %m_bFMInput.i, align 1
  %arrayidx.i.i = getelementptr %struct.tda_state, ptr %call7.i.i, i32 0, i32 12, i32 1
  %15 = call ptr @memcpy(ptr %arrayidx.i.i, ptr @FixedContentsI2CUpdate.InitRegs, i32 38)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %data.i.i.i.i) #8
  %16 = getelementptr inbounds i8, ptr %data.i.i.i.i, i32 1
  %17 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %data.i.i.i.i, align 1
  %18 = getelementptr inbounds i8, ptr %data.i.i.i.i, i32 39
  %19 = call ptr @memset(ptr %18, i32 255, i32 25)
  %20 = call ptr @memcpy(ptr %16, ptr @FixedContentsI2CUpdate.InitRegs, i32 38)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i.i.i) #8
  %21 = getelementptr inbounds i8, ptr %msg.i.i.i.i.i, i32 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2621439, ptr %21, align 4
  %conv.i.i.i.i.i = zext i8 %adr to i16
  %23 = ptrtoint ptr %msg.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv.i.i.i.i.i, ptr %msg.i.i.i.i.i, align 4
  %flags.i.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %flags.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %flags.i.i.i.i.i, align 2
  %buf.i.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i.i.i, i32 0, i32 3
  %25 = ptrtoint ptr %buf.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %data.i.i.i.i, ptr %buf.i.i.i.i.i, align 4
  %call.i.i.i.i.i = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msg.i.i.i.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, 1
  br i1 %cmp.not.i.i.i.i.i, label %if.end.i.i, label %UpdateRegs.exit.thread.i.i

UpdateRegs.exit.thread.i.i:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i.i.i.i.i = zext i8 %adr to i32
  %call5.i.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv4.i.i.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data.i.i.i.i) #8
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data.i.i.i.i) #8
  %arrayidx2.i.i = getelementptr %struct.tda_state, ptr %call7.i.i, i32 0, i32 12, i32 32
  %26 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %arrayidx2.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i.i.i) #8
  %27 = getelementptr inbounds [2 x i8], ptr %msg.i.i.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 32, ptr %msg.i.i.i.i, align 1
  %29 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %27, align 1
  %30 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call7.i.i, align 8
  %32 = ptrtoint ptr %adr1 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %adr1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i230.i.i) #8
  %34 = getelementptr inbounds i8, ptr %msg.i.i.i230.i.i, i32 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 196607, ptr %34, align 4
  %conv.i.i.i233.i.i = zext i8 %33 to i16
  %36 = ptrtoint ptr %msg.i.i.i230.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv.i.i.i233.i.i, ptr %msg.i.i.i230.i.i, align 4
  %flags.i.i.i234.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i230.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %flags.i.i.i234.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %flags.i.i.i234.i.i, align 2
  %buf.i.i.i235.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i230.i.i, i32 0, i32 3
  %38 = ptrtoint ptr %buf.i.i.i235.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %msg.i.i.i.i, ptr %buf.i.i.i235.i.i, align 4
  %call.i.i.i236.i.i = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %msg.i.i.i230.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i236.i.i)
  %cmp.not.i.i.i237.i.i = icmp eq i32 %call.i.i.i236.i.i, 1
  br i1 %cmp.not.i.i.i237.i.i, label %if.end6.i.i, label %UpdateReg.exit.thread.i.i

UpdateReg.exit.thread.i.i:                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i.i.i238.i.i = zext i8 %33 to i32
  %call5.i.i.i239.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv4.i.i.i238.i.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i230.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i.i.i) #8
  br label %cleanup

if.end6.i.i:                                      ; preds = %if.end.i.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i230.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i.i.i) #8
  %39 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 3, ptr %arrayidx2.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i243.i.i) #8
  %40 = getelementptr inbounds [2 x i8], ptr %msg.i.i243.i.i, i32 0, i32 1
  %41 = ptrtoint ptr %msg.i.i243.i.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 32, ptr %msg.i.i243.i.i, align 1
  %42 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 3, ptr %40, align 1
  %43 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call7.i.i, align 8
  %45 = ptrtoint ptr %adr1 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %adr1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i242.i.i) #8
  %47 = getelementptr inbounds i8, ptr %msg.i.i.i242.i.i, i32 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 196607, ptr %47, align 4
  %conv.i.i.i246.i.i = zext i8 %46 to i16
  %49 = ptrtoint ptr %msg.i.i.i242.i.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv.i.i.i246.i.i, ptr %msg.i.i.i242.i.i, align 4
  %flags.i.i.i247.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i242.i.i, i32 0, i32 1
  %50 = ptrtoint ptr %flags.i.i.i247.i.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 0, ptr %flags.i.i.i247.i.i, align 2
  %buf.i.i.i248.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i242.i.i, i32 0, i32 3
  %51 = ptrtoint ptr %buf.i.i.i248.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %msg.i.i243.i.i, ptr %buf.i.i.i248.i.i, align 4
  %call.i.i.i249.i.i = call i32 @i2c_transfer(ptr noundef %44, ptr noundef nonnull %msg.i.i.i242.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i249.i.i)
  %cmp.not.i.i.i250.i.i = icmp eq i32 %call.i.i.i249.i.i, 1
  br i1 %cmp.not.i.i.i250.i.i, label %if.end12.i.i, label %UpdateReg.exit255.thread.i.i

UpdateReg.exit255.thread.i.i:                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i.i.i251.i.i = zext i8 %46 to i32
  %call5.i.i.i252.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv4.i.i.i251.i.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i242.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i243.i.i) #8
  br label %cleanup

if.end12.i.i:                                     ; preds = %if.end6.i.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i242.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i243.i.i) #8
  %52 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 67, ptr %arrayidx2.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i257.i.i) #8
  %53 = getelementptr inbounds [2 x i8], ptr %msg.i.i257.i.i, i32 0, i32 1
  %54 = ptrtoint ptr %msg.i.i257.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 32, ptr %msg.i.i257.i.i, align 1
  %55 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 67, ptr %53, align 1
  %56 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call7.i.i, align 8
  %58 = ptrtoint ptr %adr1 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %adr1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i256.i.i) #8
  %60 = getelementptr inbounds i8, ptr %msg.i.i.i256.i.i, i32 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 196607, ptr %60, align 4
  %conv.i.i.i260.i.i = zext i8 %59 to i16
  %62 = ptrtoint ptr %msg.i.i.i256.i.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv.i.i.i260.i.i, ptr %msg.i.i.i256.i.i, align 4
  %flags.i.i.i261.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i256.i.i, i32 0, i32 1
  %63 = ptrtoint ptr %flags.i.i.i261.i.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 0, ptr %flags.i.i.i261.i.i, align 2
  %buf.i.i.i262.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i256.i.i, i32 0, i32 3
  %64 = ptrtoint ptr %buf.i.i.i262.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %msg.i.i257.i.i, ptr %buf.i.i.i262.i.i, align 4
  %call.i.i.i263.i.i = call i32 @i2c_transfer(ptr noundef %57, ptr noundef nonnull %msg.i.i.i256.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i263.i.i)
  %cmp.not.i.i.i264.i.i = icmp eq i32 %call.i.i.i263.i.i, 1
  br i1 %cmp.not.i.i.i264.i.i, label %if.end18.i.i, label %UpdateReg.exit269.thread.i.i

UpdateReg.exit269.thread.i.i:                     ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i.i.i265.i.i = zext i8 %59 to i32
  %call5.i.i.i266.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv4.i.i.i265.i.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i256.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i257.i.i) #8
  br label %cleanup

if.end18.i.i:                                     ; preds = %if.end12.i.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i256.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i257.i.i) #8
  %65 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 76, ptr %arrayidx2.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i271.i.i) #8
  %66 = getelementptr inbounds [2 x i8], ptr %msg.i.i271.i.i, i32 0, i32 1
  %67 = ptrtoint ptr %msg.i.i271.i.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 32, ptr %msg.i.i271.i.i, align 1
  %68 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 76, ptr %66, align 1
  %69 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %call7.i.i, align 8
  %71 = ptrtoint ptr %adr1 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %adr1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i270.i.i) #8
  %73 = getelementptr inbounds i8, ptr %msg.i.i.i270.i.i, i32 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 196607, ptr %73, align 4
  %conv.i.i.i274.i.i = zext i8 %72 to i16
  %75 = ptrtoint ptr %msg.i.i.i270.i.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv.i.i.i274.i.i, ptr %msg.i.i.i270.i.i, align 4
  %flags.i.i.i275.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i270.i.i, i32 0, i32 1
  %76 = ptrtoint ptr %flags.i.i.i275.i.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 0, ptr %flags.i.i.i275.i.i, align 2
  %buf.i.i.i276.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i270.i.i, i32 0, i32 3
  %77 = ptrtoint ptr %buf.i.i.i276.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %msg.i.i271.i.i, ptr %buf.i.i.i276.i.i, align 4
  %call.i.i.i277.i.i = call i32 @i2c_transfer(ptr noundef %70, ptr noundef nonnull %msg.i.i.i270.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i277.i.i)
  %cmp.not.i.i.i278.i.i = icmp eq i32 %call.i.i.i277.i.i, 1
  br i1 %cmp.not.i.i.i278.i.i, label %if.end24.i.i, label %UpdateReg.exit283.thread.i.i

UpdateReg.exit283.thread.i.i:                     ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i.i.i279.i.i = zext i8 %72 to i32
  %call5.i.i.i280.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv4.i.i.i279.i.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i270.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i271.i.i) #8
  br label %cleanup

if.end24.i.i:                                     ; preds = %if.end18.i.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i270.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i271.i.i) #8
  %arrayidx26.i.i = getelementptr %struct.tda_state, ptr %call7.i.i, i32 0, i32 12, i32 5
  %78 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 31, ptr %arrayidx26.i.i, align 1
  %arrayidx28.i.i = getelementptr %struct.tda_state, ptr %call7.i.i, i32 0, i32 12, i32 6
  %79 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 102, ptr %arrayidx28.i.i, align 2
  %arrayidx30.i.i = getelementptr %struct.tda_state, ptr %call7.i.i, i32 0, i32 12, i32 7
  %80 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 -127, ptr %arrayidx30.i.i, align 1
  %arrayidx32.i.i = getelementptr %struct.tda_state, ptr %call7.i.i, i32 0, i32 12, i32 8
  %81 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 -52, ptr %arrayidx32.i.i, align 4
  %arrayidx34.i.i = getelementptr %struct.tda_state, ptr %call7.i.i, i32 0, i32 12, i32 9
  %82 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 108, ptr %arrayidx34.i.i, align 1
  %arrayidx36.i.i = getelementptr %struct.tda_state, ptr %call7.i.i, i32 0, i32 12, i32 10
  %83 = ptrtoint ptr %arrayidx36.i.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %arrayidx36.i.i, align 2
  %arrayidx38.i.i = getelementptr %struct.tda_state, ptr %call7.i.i, i32 0, i32 12, i32 11
  %84 = ptrtoint ptr %arrayidx38.i.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %arrayidx38.i.i, align 1
  %arrayidx40.i.i = getelementptr %struct.tda_state, ptr %call7.i.i, i32 0, i32 12, i32 12
  %85 = ptrtoint ptr %arrayidx40.i.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 -59, ptr %arrayidx40.i.i, align 8
  %arrayidx42.i.i = getelementptr %struct.tda_state, ptr %call7.i.i, i32 0, i32 12, i32 13
  %86 = ptrtoint ptr %arrayidx42.i.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 119, ptr %arrayidx42.i.i, align 1
  %arrayidx44.i.i = getelementptr %struct.tda_state, ptr %call7.i.i, i32 0, i32 12, i32 14
  %87 = ptrtoint ptr %arrayidx44.i.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 8, ptr %arrayidx44.i.i, align 2
  %arrayidx46.i.i = getelementptr %struct.tda_state, ptr %call7.i.i, i32 0, i32 12, i32 15
  %88 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %arrayidx46.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %data.i.i285.i.i) #8
  %89 = getelementptr inbounds i8, ptr %data.i.i285.i.i, i32 1
  %arrayidx.i286.i.i = getelementptr %struct.tda_state, ptr %call7.i.i, i32 0, i32 12, i32 4
  %90 = ptrtoint ptr %data.i.i285.i.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 4, ptr %data.i.i285.i.i, align 1
  %91 = getelementptr inbounds i8, ptr %data.i.i285.i.i, i32 13
  %92 = call ptr @memset(ptr %91, i32 255, i32 51)
  %93 = call ptr @memcpy(ptr %89, ptr %arrayidx.i286.i.i, i32 12)
  %94 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %call7.i.i, align 8
  %96 = ptrtoint ptr %adr1 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %adr1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i284.i.i) #8
  %98 = getelementptr inbounds i8, ptr %msg.i.i.i284.i.i, i32 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 917503, ptr %98, align 4
  %conv.i.i.i288.i.i = zext i8 %97 to i16
  %100 = ptrtoint ptr %msg.i.i.i284.i.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %conv.i.i.i288.i.i, ptr %msg.i.i.i284.i.i, align 4
  %flags.i.i.i289.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i284.i.i, i32 0, i32 1
  %101 = ptrtoint ptr %flags.i.i.i289.i.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 0, ptr %flags.i.i.i289.i.i, align 2
  %buf.i.i.i290.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i284.i.i, i32 0, i32 3
  %102 = ptrtoint ptr %buf.i.i.i290.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %data.i.i285.i.i, ptr %buf.i.i.i290.i.i, align 4
  %call.i.i.i291.i.i = call i32 @i2c_transfer(ptr noundef %95, ptr noundef nonnull %msg.i.i.i284.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i291.i.i)
  %cmp.not.i.i.i292.i.i = icmp eq i32 %call.i.i.i291.i.i, 1
  br i1 %cmp.not.i.i.i292.i.i, label %if.end50.i.i, label %UpdateRegs.exit297.thread.i.i

UpdateRegs.exit297.thread.i.i:                    ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i.i.i293.i.i = zext i8 %97 to i32
  %call5.i.i.i294.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv4.i.i.i293.i.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i284.i.i) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data.i.i285.i.i) #8
  br label %cleanup

if.end50.i.i:                                     ; preds = %if.end24.i.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i284.i.i) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data.i.i285.i.i) #8
  call void @msleep(i32 noundef 5) #8
  %arrayidx.i300.i.i = getelementptr %struct.tda_state, ptr %call7.i.i, i32 0, i32 12, i32 3
  %103 = ptrtoint ptr %arrayidx.i300.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx.i300.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i299.i.i) #8
  %105 = getelementptr inbounds [2 x i8], ptr %msg.i.i299.i.i, i32 0, i32 1
  %106 = ptrtoint ptr %msg.i.i299.i.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 3, ptr %msg.i.i299.i.i, align 1
  %107 = ptrtoint ptr %105 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %104, ptr %105, align 1
  %108 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %call7.i.i, align 8
  %110 = ptrtoint ptr %adr1 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %adr1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i298.i.i) #8
  %112 = getelementptr inbounds i8, ptr %msg.i.i.i298.i.i, i32 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 196607, ptr %112, align 4
  %conv.i.i.i302.i.i = zext i8 %111 to i16
  %114 = ptrtoint ptr %msg.i.i.i298.i.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %conv.i.i.i302.i.i, ptr %msg.i.i.i298.i.i, align 4
  %flags.i.i.i303.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i298.i.i, i32 0, i32 1
  %115 = ptrtoint ptr %flags.i.i.i303.i.i to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 0, ptr %flags.i.i.i303.i.i, align 2
  %buf.i.i.i304.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i298.i.i, i32 0, i32 3
  %116 = ptrtoint ptr %buf.i.i.i304.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %msg.i.i299.i.i, ptr %buf.i.i.i304.i.i, align 4
  %call.i.i.i305.i.i = call i32 @i2c_transfer(ptr noundef %109, ptr noundef nonnull %msg.i.i.i298.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i305.i.i)
  %cmp.not.i.i.i306.i.i = icmp eq i32 %call.i.i.i305.i.i, 1
  br i1 %cmp.not.i.i.i306.i.i, label %if.end54.i.i, label %UpdateReg.exit311.thread.i.i

UpdateReg.exit311.thread.i.i:                     ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i.i.i307.i.i = zext i8 %111 to i32
  %call5.i.i.i308.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv4.i.i.i307.i.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i298.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i299.i.i) #8
  br label %cleanup

if.end54.i.i:                                     ; preds = %if.end50.i.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i298.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i299.i.i) #8
  call void @msleep(i32 noundef 5) #8
  %117 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 -123, ptr %arrayidx30.i.i, align 1
  %118 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 -53, ptr %arrayidx32.i.i, align 4
  %119 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 102, ptr %arrayidx34.i.i, align 1
  %120 = ptrtoint ptr %arrayidx36.i.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 112, ptr %arrayidx36.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %data.i.i313.i.i) #8
  %121 = getelementptr inbounds i8, ptr %data.i.i313.i.i, i32 1
  %122 = ptrtoint ptr %data.i.i313.i.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 5, ptr %data.i.i313.i.i, align 1
  %123 = getelementptr inbounds i8, ptr %data.i.i313.i.i, i32 8
  %124 = call ptr @memset(ptr %123, i32 255, i32 56)
  %125 = call ptr @memcpy(ptr %121, ptr %arrayidx26.i.i, i32 7)
  %126 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %call7.i.i, align 8
  %128 = ptrtoint ptr %adr1 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %adr1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i312.i.i) #8
  %130 = getelementptr inbounds i8, ptr %msg.i.i.i312.i.i, i32 4
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 589823, ptr %130, align 4
  %conv.i.i.i316.i.i = zext i8 %129 to i16
  %132 = ptrtoint ptr %msg.i.i.i312.i.i to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 %conv.i.i.i316.i.i, ptr %msg.i.i.i312.i.i, align 4
  %flags.i.i.i317.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i312.i.i, i32 0, i32 1
  %133 = ptrtoint ptr %flags.i.i.i317.i.i to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 0, ptr %flags.i.i.i317.i.i, align 2
  %buf.i.i.i318.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i312.i.i, i32 0, i32 3
  %134 = ptrtoint ptr %buf.i.i.i318.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %data.i.i313.i.i, ptr %buf.i.i.i318.i.i, align 4
  %call.i.i.i319.i.i = call i32 @i2c_transfer(ptr noundef %127, ptr noundef nonnull %msg.i.i.i312.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i319.i.i)
  %cmp.not.i.i.i320.i.i = icmp eq i32 %call.i.i.i319.i.i, 1
  br i1 %cmp.not.i.i.i320.i.i, label %if.end66.i.i, label %UpdateRegs.exit325.thread.i.i

UpdateRegs.exit325.thread.i.i:                    ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i.i.i321.i.i = zext i8 %129 to i32
  %call5.i.i.i322.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv4.i.i.i321.i.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i312.i.i) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data.i.i313.i.i) #8
  br label %cleanup

if.end66.i.i:                                     ; preds = %if.end54.i.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i312.i.i) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data.i.i313.i.i) #8
  call void @msleep(i32 noundef 5) #8
  %135 = ptrtoint ptr %arrayidx.i286.i.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx.i286.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i327.i.i) #8
  %137 = getelementptr inbounds [2 x i8], ptr %msg.i.i327.i.i, i32 0, i32 1
  %138 = ptrtoint ptr %msg.i.i327.i.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 4, ptr %msg.i.i327.i.i, align 1
  %139 = ptrtoint ptr %137 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %136, ptr %137, align 1
  %140 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %call7.i.i, align 8
  %142 = ptrtoint ptr %adr1 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %adr1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i326.i.i) #8
  %144 = getelementptr inbounds i8, ptr %msg.i.i.i326.i.i, i32 4
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 196607, ptr %144, align 4
  %conv.i.i.i330.i.i = zext i8 %143 to i16
  %146 = ptrtoint ptr %msg.i.i.i326.i.i to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 %conv.i.i.i330.i.i, ptr %msg.i.i.i326.i.i, align 4
  %flags.i.i.i331.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i326.i.i, i32 0, i32 1
  %147 = ptrtoint ptr %flags.i.i.i331.i.i to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 0, ptr %flags.i.i.i331.i.i, align 2
  %buf.i.i.i332.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i326.i.i, i32 0, i32 3
  %148 = ptrtoint ptr %buf.i.i.i332.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %msg.i.i327.i.i, ptr %buf.i.i.i332.i.i, align 4
  %call.i.i.i333.i.i = call i32 @i2c_transfer(ptr noundef %141, ptr noundef nonnull %msg.i.i.i326.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i333.i.i)
  %cmp.not.i.i.i334.i.i = icmp eq i32 %call.i.i.i333.i.i, 1
  br i1 %cmp.not.i.i.i334.i.i, label %if.end70.i.i, label %UpdateReg.exit339.thread.i.i

UpdateReg.exit339.thread.i.i:                     ; preds = %if.end66.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i.i.i335.i.i = zext i8 %143 to i32
  %call5.i.i.i336.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv4.i.i.i335.i.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i326.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i327.i.i) #8
  br label %cleanup

if.end70.i.i:                                     ; preds = %if.end66.i.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i326.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i327.i.i) #8
  call void @msleep(i32 noundef 30) #8
  %149 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 -126, ptr %arrayidx30.i.i, align 1
  %150 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 -88, ptr %arrayidx32.i.i, align 4
  %151 = ptrtoint ptr %arrayidx36.i.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 0, ptr %arrayidx36.i.i, align 2
  %152 = ptrtoint ptr %arrayidx40.i.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 -95, ptr %arrayidx40.i.i, align 8
  %153 = ptrtoint ptr %arrayidx42.i.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 115, ptr %arrayidx42.i.i, align 1
  %154 = ptrtoint ptr %arrayidx44.i.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 26, ptr %arrayidx44.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %data.i.i122.i) #8
  %155 = getelementptr inbounds i8, ptr %data.i.i122.i, i32 1
  %156 = ptrtoint ptr %data.i.i122.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 5, ptr %data.i.i122.i, align 1
  %157 = getelementptr inbounds i8, ptr %data.i.i122.i, i32 12
  %158 = call ptr @memset(ptr %157, i32 255, i32 52)
  %159 = call ptr @memcpy(ptr %155, ptr %arrayidx26.i.i, i32 11)
  %160 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %call7.i.i, align 8
  %162 = ptrtoint ptr %adr1 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %adr1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i121.i) #8
  %164 = getelementptr inbounds i8, ptr %msg.i.i.i121.i, i32 4
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 851967, ptr %164, align 4
  %conv.i.i.i125.i = zext i8 %163 to i16
  %166 = ptrtoint ptr %msg.i.i.i121.i to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 %conv.i.i.i125.i, ptr %msg.i.i.i121.i, align 4
  %flags.i.i.i126.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i121.i, i32 0, i32 1
  %167 = ptrtoint ptr %flags.i.i.i126.i to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 0, ptr %flags.i.i.i126.i, align 2
  %buf.i.i.i127.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i121.i, i32 0, i32 3
  %168 = ptrtoint ptr %buf.i.i.i127.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %data.i.i122.i, ptr %buf.i.i.i127.i, align 4
  %call.i.i.i128.i = call i32 @i2c_transfer(ptr noundef %161, ptr noundef nonnull %msg.i.i.i121.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i128.i)
  %cmp.not.i.i.i129.i = icmp eq i32 %call.i.i.i128.i, 1
  br i1 %cmp.not.i.i.i129.i, label %if.end86.i.i, label %UpdateRegs.exit135.thread.i

UpdateRegs.exit135.thread.i:                      ; preds = %if.end70.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i.i.i131.i = zext i8 %163 to i32
  %call5.i.i.i132.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv4.i.i.i131.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i121.i) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data.i.i122.i) #8
  br label %cleanup

if.end86.i.i:                                     ; preds = %if.end70.i.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i121.i) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data.i.i122.i) #8
  call void @msleep(i32 noundef 5) #8
  %169 = ptrtoint ptr %arrayidx.i300.i.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %arrayidx.i300.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i108.i) #8
  %171 = getelementptr inbounds [2 x i8], ptr %msg.i.i108.i, i32 0, i32 1
  %172 = ptrtoint ptr %msg.i.i108.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 3, ptr %msg.i.i108.i, align 1
  %173 = ptrtoint ptr %171 to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 %170, ptr %171, align 1
  %174 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %call7.i.i, align 8
  %176 = ptrtoint ptr %adr1 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %adr1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i107.i) #8
  %178 = getelementptr inbounds i8, ptr %msg.i.i.i107.i, i32 4
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 196607, ptr %178, align 4
  %conv.i.i.i111.i = zext i8 %177 to i16
  %180 = ptrtoint ptr %msg.i.i.i107.i to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 %conv.i.i.i111.i, ptr %msg.i.i.i107.i, align 4
  %flags.i.i.i112.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i107.i, i32 0, i32 1
  %181 = ptrtoint ptr %flags.i.i.i112.i to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 0, ptr %flags.i.i.i112.i, align 2
  %buf.i.i.i113.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i107.i, i32 0, i32 3
  %182 = ptrtoint ptr %buf.i.i.i113.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %msg.i.i108.i, ptr %buf.i.i.i113.i, align 4
  %call.i.i.i114.i = call i32 @i2c_transfer(ptr noundef %175, ptr noundef nonnull %msg.i.i.i107.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i114.i)
  %cmp.not.i.i.i115.i = icmp eq i32 %call.i.i.i114.i, 1
  br i1 %cmp.not.i.i.i115.i, label %if.end90.i.i, label %UpdateReg.exit120.thread.i

UpdateReg.exit120.thread.i:                       ; preds = %if.end86.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i.i.i116.i = zext i8 %177 to i32
  %call5.i.i.i117.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv4.i.i.i116.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i107.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i108.i) #8
  br label %cleanup

if.end90.i.i:                                     ; preds = %if.end86.i.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i107.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i108.i) #8
  call void @msleep(i32 noundef 5) #8
  %183 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 -122, ptr %arrayidx30.i.i, align 1
  %184 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 -88, ptr %arrayidx32.i.i, align 4
  %185 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 102, ptr %arrayidx34.i.i, align 1
  %186 = ptrtoint ptr %arrayidx36.i.i to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 -96, ptr %arrayidx36.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %data.i.i93.i) #8
  %187 = getelementptr inbounds i8, ptr %data.i.i93.i, i32 1
  %188 = ptrtoint ptr %data.i.i93.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 5, ptr %data.i.i93.i, align 1
  %189 = getelementptr inbounds i8, ptr %data.i.i93.i, i32 8
  %190 = call ptr @memset(ptr %189, i32 255, i32 56)
  %191 = call ptr @memcpy(ptr %187, ptr %arrayidx26.i.i, i32 7)
  %192 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %call7.i.i, align 8
  %194 = ptrtoint ptr %adr1 to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %adr1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i92.i) #8
  %196 = getelementptr inbounds i8, ptr %msg.i.i.i92.i, i32 4
  %197 = ptrtoint ptr %196 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 589823, ptr %196, align 4
  %conv.i.i.i96.i = zext i8 %195 to i16
  %198 = ptrtoint ptr %msg.i.i.i92.i to i32
  call void @__asan_store2_noabort(i32 %198)
  store i16 %conv.i.i.i96.i, ptr %msg.i.i.i92.i, align 4
  %flags.i.i.i97.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i92.i, i32 0, i32 1
  %199 = ptrtoint ptr %flags.i.i.i97.i to i32
  call void @__asan_store2_noabort(i32 %199)
  store i16 0, ptr %flags.i.i.i97.i, align 2
  %buf.i.i.i98.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i92.i, i32 0, i32 3
  %200 = ptrtoint ptr %buf.i.i.i98.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr %data.i.i93.i, ptr %buf.i.i.i98.i, align 4
  %call.i.i.i99.i = call i32 @i2c_transfer(ptr noundef %193, ptr noundef nonnull %msg.i.i.i92.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i99.i)
  %cmp.not.i.i.i100.i = icmp eq i32 %call.i.i.i99.i, 1
  br i1 %cmp.not.i.i.i100.i, label %if.end102.i.i, label %UpdateRegs.exit106.thread.i

UpdateRegs.exit106.thread.i:                      ; preds = %if.end90.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i.i.i102.i = zext i8 %195 to i32
  %call5.i.i.i103.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv4.i.i.i102.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i92.i) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data.i.i93.i) #8
  br label %cleanup

if.end102.i.i:                                    ; preds = %if.end90.i.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i92.i) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data.i.i93.i) #8
  call void @msleep(i32 noundef 5) #8
  %201 = ptrtoint ptr %arrayidx.i286.i.i to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %arrayidx.i286.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i79.i) #8
  %203 = getelementptr inbounds [2 x i8], ptr %msg.i.i79.i, i32 0, i32 1
  %204 = ptrtoint ptr %msg.i.i79.i to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 4, ptr %msg.i.i79.i, align 1
  %205 = ptrtoint ptr %203 to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 %202, ptr %203, align 1
  %206 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %call7.i.i, align 8
  %208 = ptrtoint ptr %adr1 to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %adr1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i78.i) #8
  %210 = getelementptr inbounds i8, ptr %msg.i.i.i78.i, i32 4
  %211 = ptrtoint ptr %210 to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 196607, ptr %210, align 4
  %conv.i.i.i82.i = zext i8 %209 to i16
  %212 = ptrtoint ptr %msg.i.i.i78.i to i32
  call void @__asan_store2_noabort(i32 %212)
  store i16 %conv.i.i.i82.i, ptr %msg.i.i.i78.i, align 4
  %flags.i.i.i83.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i78.i, i32 0, i32 1
  %213 = ptrtoint ptr %flags.i.i.i83.i to i32
  call void @__asan_store2_noabort(i32 %213)
  store i16 0, ptr %flags.i.i.i83.i, align 2
  %buf.i.i.i84.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i78.i, i32 0, i32 3
  %214 = ptrtoint ptr %buf.i.i.i84.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr %msg.i.i79.i, ptr %buf.i.i.i84.i, align 4
  %call.i.i.i85.i = call i32 @i2c_transfer(ptr noundef %207, ptr noundef nonnull %msg.i.i.i78.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i85.i)
  %cmp.not.i.i.i86.i = icmp eq i32 %call.i.i.i85.i, 1
  br i1 %cmp.not.i.i.i86.i, label %if.end106.i.i, label %UpdateReg.exit91.thread.i

UpdateReg.exit91.thread.i:                        ; preds = %if.end102.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i.i.i87.i = zext i8 %209 to i32
  %call5.i.i.i88.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv4.i.i.i87.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i78.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i79.i) #8
  br label %cleanup

if.end106.i.i:                                    ; preds = %if.end102.i.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i78.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i79.i) #8
  call void @msleep(i32 noundef 30) #8
  %215 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 -125, ptr %arrayidx30.i.i, align 1
  %216 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 -104, ptr %arrayidx32.i.i, align 4
  %217 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 101, ptr %arrayidx34.i.i, align 1
  %218 = ptrtoint ptr %arrayidx36.i.i to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 0, ptr %arrayidx36.i.i, align 2
  %219 = ptrtoint ptr %arrayidx40.i.i to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 -111, ptr %arrayidx40.i.i, align 8
  %220 = ptrtoint ptr %arrayidx42.i.i to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 113, ptr %arrayidx42.i.i, align 1
  %221 = ptrtoint ptr %arrayidx44.i.i to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 -51, ptr %arrayidx44.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %data.i.i64.i) #8
  %222 = getelementptr inbounds i8, ptr %data.i.i64.i, i32 1
  %223 = ptrtoint ptr %data.i.i64.i to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 5, ptr %data.i.i64.i, align 1
  %224 = getelementptr inbounds i8, ptr %data.i.i64.i, i32 12
  %225 = call ptr @memset(ptr %224, i32 255, i32 52)
  %226 = call ptr @memcpy(ptr %222, ptr %arrayidx26.i.i, i32 11)
  %227 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %call7.i.i, align 8
  %229 = ptrtoint ptr %adr1 to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %adr1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i63.i) #8
  %231 = getelementptr inbounds i8, ptr %msg.i.i.i63.i, i32 4
  %232 = ptrtoint ptr %231 to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 851967, ptr %231, align 4
  %conv.i.i.i67.i = zext i8 %230 to i16
  %233 = ptrtoint ptr %msg.i.i.i63.i to i32
  call void @__asan_store2_noabort(i32 %233)
  store i16 %conv.i.i.i67.i, ptr %msg.i.i.i63.i, align 4
  %flags.i.i.i68.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i63.i, i32 0, i32 1
  %234 = ptrtoint ptr %flags.i.i.i68.i to i32
  call void @__asan_store2_noabort(i32 %234)
  store i16 0, ptr %flags.i.i.i68.i, align 2
  %buf.i.i.i69.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i63.i, i32 0, i32 3
  %235 = ptrtoint ptr %buf.i.i.i69.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store ptr %data.i.i64.i, ptr %buf.i.i.i69.i, align 4
  %call.i.i.i70.i = call i32 @i2c_transfer(ptr noundef %228, ptr noundef nonnull %msg.i.i.i63.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i70.i)
  %cmp.not.i.i.i71.i = icmp eq i32 %call.i.i.i70.i, 1
  br i1 %cmp.not.i.i.i71.i, label %if.end124.i.i, label %UpdateRegs.exit77.thread.i

UpdateRegs.exit77.thread.i:                       ; preds = %if.end106.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i.i.i73.i = zext i8 %230 to i32
  %call5.i.i.i74.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv4.i.i.i73.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i63.i) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data.i.i64.i) #8
  br label %cleanup

if.end124.i.i:                                    ; preds = %if.end106.i.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i63.i) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data.i.i64.i) #8
  call void @msleep(i32 noundef 5) #8
  %236 = ptrtoint ptr %arrayidx.i300.i.i to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %arrayidx.i300.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i50.i) #8
  %238 = getelementptr inbounds [2 x i8], ptr %msg.i.i50.i, i32 0, i32 1
  %239 = ptrtoint ptr %msg.i.i50.i to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 3, ptr %msg.i.i50.i, align 1
  %240 = ptrtoint ptr %238 to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 %237, ptr %238, align 1
  %241 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %call7.i.i, align 8
  %243 = ptrtoint ptr %adr1 to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %adr1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i49.i) #8
  %245 = getelementptr inbounds i8, ptr %msg.i.i.i49.i, i32 4
  %246 = ptrtoint ptr %245 to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 196607, ptr %245, align 4
  %conv.i.i.i53.i = zext i8 %244 to i16
  %247 = ptrtoint ptr %msg.i.i.i49.i to i32
  call void @__asan_store2_noabort(i32 %247)
  store i16 %conv.i.i.i53.i, ptr %msg.i.i.i49.i, align 4
  %flags.i.i.i54.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i49.i, i32 0, i32 1
  %248 = ptrtoint ptr %flags.i.i.i54.i to i32
  call void @__asan_store2_noabort(i32 %248)
  store i16 0, ptr %flags.i.i.i54.i, align 2
  %buf.i.i.i55.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i49.i, i32 0, i32 3
  %249 = ptrtoint ptr %buf.i.i.i55.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr %msg.i.i50.i, ptr %buf.i.i.i55.i, align 4
  %call.i.i.i56.i = call i32 @i2c_transfer(ptr noundef %242, ptr noundef nonnull %msg.i.i.i49.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i56.i)
  %cmp.not.i.i.i57.i = icmp eq i32 %call.i.i.i56.i, 1
  br i1 %cmp.not.i.i.i57.i, label %if.end128.i.i, label %UpdateReg.exit62.thread.i

UpdateReg.exit62.thread.i:                        ; preds = %if.end124.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i.i.i58.i = zext i8 %244 to i32
  %call5.i.i.i59.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv4.i.i.i58.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i49.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i50.i) #8
  br label %cleanup

if.end128.i.i:                                    ; preds = %if.end124.i.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i49.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i50.i) #8
  call void @msleep(i32 noundef 5) #8
  %250 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_store1_noabort(i32 %250)
  store i8 -121, ptr %arrayidx30.i.i, align 1
  %251 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_store1_noabort(i32 %251)
  store i8 101, ptr %arrayidx34.i.i, align 1
  %252 = ptrtoint ptr %arrayidx36.i.i to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 80, ptr %arrayidx36.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %data.i.i.i) #8
  %253 = getelementptr inbounds i8, ptr %data.i.i.i, i32 1
  %254 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 5, ptr %data.i.i.i, align 1
  %255 = getelementptr inbounds i8, ptr %data.i.i.i, i32 8
  %256 = call ptr @memset(ptr %255, i32 255, i32 56)
  %257 = call ptr @memcpy(ptr %253, ptr %arrayidx26.i.i, i32 7)
  %258 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %call7.i.i, align 8
  %260 = ptrtoint ptr %adr1 to i32
  call void @__asan_load1_noabort(i32 %260)
  %261 = load i8, ptr %adr1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i36.i) #8
  %262 = getelementptr inbounds i8, ptr %msg.i.i.i36.i, i32 4
  %263 = ptrtoint ptr %262 to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 589823, ptr %262, align 4
  %conv.i.i.i39.i = zext i8 %261 to i16
  %264 = ptrtoint ptr %msg.i.i.i36.i to i32
  call void @__asan_store2_noabort(i32 %264)
  store i16 %conv.i.i.i39.i, ptr %msg.i.i.i36.i, align 4
  %flags.i.i.i40.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i36.i, i32 0, i32 1
  %265 = ptrtoint ptr %flags.i.i.i40.i to i32
  call void @__asan_store2_noabort(i32 %265)
  store i16 0, ptr %flags.i.i.i40.i, align 2
  %buf.i.i.i41.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i36.i, i32 0, i32 3
  %266 = ptrtoint ptr %buf.i.i.i41.i to i32
  call void @__asan_store4_noabort(i32 %266)
  store ptr %data.i.i.i, ptr %buf.i.i.i41.i, align 4
  %call.i.i.i42.i = call i32 @i2c_transfer(ptr noundef %259, ptr noundef nonnull %msg.i.i.i36.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i42.i)
  %cmp.not.i.i.i43.i = icmp eq i32 %call.i.i.i42.i, 1
  br i1 %cmp.not.i.i.i43.i, label %if.end138.i.i, label %UpdateRegs.exit.thread.i

UpdateRegs.exit.thread.i:                         ; preds = %if.end128.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i.i.i45.i = zext i8 %261 to i32
  %call5.i.i.i46.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv4.i.i.i45.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i36.i) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data.i.i.i) #8
  br label %cleanup

if.end138.i.i:                                    ; preds = %if.end128.i.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i36.i) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data.i.i.i) #8
  call void @msleep(i32 noundef 5) #8
  %267 = ptrtoint ptr %arrayidx.i286.i.i to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %arrayidx.i286.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i23.i) #8
  %269 = getelementptr inbounds [2 x i8], ptr %msg.i.i23.i, i32 0, i32 1
  %270 = ptrtoint ptr %msg.i.i23.i to i32
  call void @__asan_store1_noabort(i32 %270)
  store i8 4, ptr %msg.i.i23.i, align 1
  %271 = ptrtoint ptr %269 to i32
  call void @__asan_store1_noabort(i32 %271)
  store i8 %268, ptr %269, align 1
  %272 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %call7.i.i, align 8
  %274 = ptrtoint ptr %adr1 to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %adr1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i22.i) #8
  %276 = getelementptr inbounds i8, ptr %msg.i.i.i22.i, i32 4
  %277 = ptrtoint ptr %276 to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 196607, ptr %276, align 4
  %conv.i.i.i26.i = zext i8 %275 to i16
  %278 = ptrtoint ptr %msg.i.i.i22.i to i32
  call void @__asan_store2_noabort(i32 %278)
  store i16 %conv.i.i.i26.i, ptr %msg.i.i.i22.i, align 4
  %flags.i.i.i27.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i22.i, i32 0, i32 1
  %279 = ptrtoint ptr %flags.i.i.i27.i to i32
  call void @__asan_store2_noabort(i32 %279)
  store i16 0, ptr %flags.i.i.i27.i, align 2
  %buf.i.i.i28.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i22.i, i32 0, i32 3
  %280 = ptrtoint ptr %buf.i.i.i28.i to i32
  call void @__asan_store4_noabort(i32 %280)
  store ptr %msg.i.i23.i, ptr %buf.i.i.i28.i, align 4
  %call.i.i.i29.i = call i32 @i2c_transfer(ptr noundef %273, ptr noundef nonnull %msg.i.i.i22.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i29.i)
  %cmp.not.i.i.i30.i = icmp eq i32 %call.i.i.i29.i, 1
  br i1 %cmp.not.i.i.i30.i, label %if.end142.i.i, label %UpdateReg.exit35.thread.i

UpdateReg.exit35.thread.i:                        ; preds = %if.end138.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i.i.i31.i = zext i8 %275 to i32
  %call5.i.i.i32.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv4.i.i.i31.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i22.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i23.i) #8
  br label %cleanup

if.end142.i.i:                                    ; preds = %if.end138.i.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i22.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i23.i) #8
  call void @msleep(i32 noundef 30) #8
  %281 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_store1_noabort(i32 %281)
  store i8 100, ptr %arrayidx28.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i9.i) #8
  %282 = getelementptr inbounds [2 x i8], ptr %msg.i.i9.i, i32 0, i32 1
  %283 = ptrtoint ptr %msg.i.i9.i to i32
  call void @__asan_store1_noabort(i32 %283)
  store i8 6, ptr %msg.i.i9.i, align 1
  %284 = ptrtoint ptr %282 to i32
  call void @__asan_store1_noabort(i32 %284)
  store i8 100, ptr %282, align 1
  %285 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %call7.i.i, align 8
  %287 = ptrtoint ptr %adr1 to i32
  call void @__asan_load1_noabort(i32 %287)
  %288 = load i8, ptr %adr1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i8.i) #8
  %289 = getelementptr inbounds i8, ptr %msg.i.i.i8.i, i32 4
  %290 = ptrtoint ptr %289 to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 196607, ptr %289, align 4
  %conv.i.i.i12.i = zext i8 %288 to i16
  %291 = ptrtoint ptr %msg.i.i.i8.i to i32
  call void @__asan_store2_noabort(i32 %291)
  store i16 %conv.i.i.i12.i, ptr %msg.i.i.i8.i, align 4
  %flags.i.i.i13.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i8.i, i32 0, i32 1
  %292 = ptrtoint ptr %flags.i.i.i13.i to i32
  call void @__asan_store2_noabort(i32 %292)
  store i16 0, ptr %flags.i.i.i13.i, align 2
  %buf.i.i.i14.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i8.i, i32 0, i32 3
  %293 = ptrtoint ptr %buf.i.i.i14.i to i32
  call void @__asan_store4_noabort(i32 %293)
  store ptr %msg.i.i9.i, ptr %buf.i.i.i14.i, align 4
  %call.i.i.i15.i = call i32 @i2c_transfer(ptr noundef %286, ptr noundef nonnull %msg.i.i.i8.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i15.i)
  %cmp.not.i.i.i16.i = icmp eq i32 %call.i.i.i15.i, 1
  br i1 %cmp.not.i.i.i16.i, label %if.end148.i.i, label %UpdateReg.exit21.thread.i

UpdateReg.exit21.thread.i:                        ; preds = %if.end142.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i.i.i17.i = zext i8 %288 to i32
  %call5.i.i.i18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv4.i.i.i17.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i8.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i9.i) #8
  br label %cleanup

if.end148.i.i:                                    ; preds = %if.end142.i.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i8.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i9.i) #8
  %294 = ptrtoint ptr %arrayidx.i300.i.i to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %arrayidx.i300.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i.i) #8
  %296 = getelementptr inbounds [2 x i8], ptr %msg.i.i.i, i32 0, i32 1
  %297 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store1_noabort(i32 %297)
  store i8 3, ptr %msg.i.i.i, align 1
  %298 = ptrtoint ptr %296 to i32
  call void @__asan_store1_noabort(i32 %298)
  store i8 %295, ptr %296, align 1
  %299 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %call7.i.i, align 8
  %301 = ptrtoint ptr %adr1 to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %adr1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i6.i) #8
  %303 = getelementptr inbounds i8, ptr %msg.i.i.i6.i, i32 4
  %304 = ptrtoint ptr %303 to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 196607, ptr %303, align 4
  %conv.i.i.i.i = zext i8 %302 to i16
  %305 = ptrtoint ptr %msg.i.i.i6.i to i32
  call void @__asan_store2_noabort(i32 %305)
  store i16 %conv.i.i.i.i, ptr %msg.i.i.i6.i, align 4
  %flags.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i6.i, i32 0, i32 1
  %306 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %306)
  store i16 0, ptr %flags.i.i.i.i, align 2
  %buf.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i6.i, i32 0, i32 3
  %307 = ptrtoint ptr %buf.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %307)
  store ptr %msg.i.i.i, ptr %buf.i.i.i.i, align 4
  %call.i.i.i.i = call i32 @i2c_transfer(ptr noundef %300, ptr noundef nonnull %msg.i.i.i6.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 1
  br i1 %cmp.not.i.i.i.i, label %if.end.i, label %FixedContentsI2CUpdate.exit.thread156.i

FixedContentsI2CUpdate.exit.thread156.i:          ; preds = %if.end148.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i.i.i.i = zext i8 %302 to i32
  %call5.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv4.i.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i6.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i.i) #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end148.i.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i6.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i.i) #8
  call void @msleep(i32 noundef 200) #8
  %308 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_load1_noabort(i32 %308)
  %309 = load i8, ptr %arrayidx26.i.i, align 1
  %310 = and i8 %309, -32
  %311 = or i8 %310, 18
  store i8 %311, ptr %arrayidx26.i.i, align 1
  %312 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_load1_noabort(i32 %312)
  %313 = load i8, ptr %arrayidx28.i.i, align 2
  %314 = and i8 %313, -32
  store i8 %314, ptr %arrayidx28.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %data.i.i.i.i.i) #8
  %315 = getelementptr inbounds i8, ptr %data.i.i.i.i.i, i32 1
  %316 = getelementptr inbounds i8, ptr %data.i.i.i.i.i, i32 3
  %317 = call ptr @memset(ptr %316, i32 255, i32 61)
  %318 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %318)
  store i8 5, ptr %data.i.i.i.i.i, align 1
  %319 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_loadN_noabort(i32 %319, i32 2)
  %320 = load i16, ptr %arrayidx26.i.i, align 1
  %321 = ptrtoint ptr %315 to i32
  call void @__asan_storeN_noabort(i32 %321, i32 2)
  store i16 %320, ptr %315, align 1
  %322 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %call7.i.i, align 8
  %324 = ptrtoint ptr %adr1 to i32
  call void @__asan_load1_noabort(i32 %324)
  %325 = load i8, ptr %adr1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i.i.i.i) #8
  %326 = getelementptr inbounds i8, ptr %msg.i.i.i.i.i.i, i32 4
  %327 = ptrtoint ptr %326 to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 262143, ptr %326, align 4
  %conv.i.i.i.i.i.i = zext i8 %325 to i16
  %328 = ptrtoint ptr %msg.i.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %328)
  store i16 %conv.i.i.i.i.i.i, ptr %msg.i.i.i.i.i.i, align 4
  %flags.i.i.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i.i.i.i, i32 0, i32 1
  %329 = ptrtoint ptr %flags.i.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %329)
  store i16 0, ptr %flags.i.i.i.i.i.i, align 2
  %buf.i.i.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i.i.i.i, i32 0, i32 3
  %330 = ptrtoint ptr %buf.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %330)
  store ptr %data.i.i.i.i.i, ptr %buf.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i = call i32 @i2c_transfer(ptr noundef %323, ptr noundef nonnull %msg.i.i.i.i.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %call.i.i.i.i.i.i, 1
  br i1 %cmp.not.i.i.i.i.i.i, label %if.end.i.i.i, label %UpdateRegs.exit.thread.i.i.i

UpdateRegs.exit.thread.i.i.i:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i.i.i.i.i.i = zext i8 %325 to i32
  %call5.i.i.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv4.i.i.i.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data.i.i.i.i.i) #8
  br label %cleanup

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data.i.i.i.i.i) #8
  %arrayidx13.i.i.i = getelementptr %struct.tda_state, ptr %call7.i.i, i32 0, i32 12, i32 33
  %331 = ptrtoint ptr %arrayidx13.i.i.i to i32
  call void @__asan_load1_noabort(i32 %331)
  %332 = load i8, ptr %arrayidx13.i.i.i, align 1
  %333 = and i8 %332, -4
  store i8 %333, ptr %arrayidx13.i.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i.i.i1.i) #8
  %334 = getelementptr inbounds [2 x i8], ptr %msg.i.i.i.i1.i, i32 0, i32 1
  %335 = ptrtoint ptr %msg.i.i.i.i1.i to i32
  call void @__asan_store1_noabort(i32 %335)
  store i8 33, ptr %msg.i.i.i.i1.i, align 1
  %336 = ptrtoint ptr %334 to i32
  call void @__asan_store1_noabort(i32 %336)
  store i8 %333, ptr %334, align 1
  %337 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %call7.i.i, align 8
  %339 = ptrtoint ptr %adr1 to i32
  call void @__asan_load1_noabort(i32 %339)
  %340 = load i8, ptr %adr1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i57.i.i.i) #8
  %341 = getelementptr inbounds i8, ptr %msg.i.i.i57.i.i.i, i32 4
  %342 = ptrtoint ptr %341 to i32
  call void @__asan_store4_noabort(i32 %342)
  store i32 196607, ptr %341, align 4
  %conv.i.i.i60.i.i.i = zext i8 %340 to i16
  %343 = ptrtoint ptr %msg.i.i.i57.i.i.i to i32
  call void @__asan_store2_noabort(i32 %343)
  store i16 %conv.i.i.i60.i.i.i, ptr %msg.i.i.i57.i.i.i, align 4
  %flags.i.i.i61.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i57.i.i.i, i32 0, i32 1
  %344 = ptrtoint ptr %flags.i.i.i61.i.i.i to i32
  call void @__asan_store2_noabort(i32 %344)
  store i16 0, ptr %flags.i.i.i61.i.i.i, align 2
  %buf.i.i.i62.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i57.i.i.i, i32 0, i32 3
  %345 = ptrtoint ptr %buf.i.i.i62.i.i.i to i32
  call void @__asan_store4_noabort(i32 %345)
  store ptr %msg.i.i.i.i1.i, ptr %buf.i.i.i62.i.i.i, align 4
  %call.i.i.i63.i.i.i = call i32 @i2c_transfer(ptr noundef %338, ptr noundef nonnull %msg.i.i.i57.i.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i63.i.i.i)
  %cmp.not.i.i.i64.i.i.i = icmp eq i32 %call.i.i.i63.i.i.i, 1
  br i1 %cmp.not.i.i.i64.i.i.i, label %if.end23.i.i.i, label %UpdateReg.exit.thread.i.i.i

UpdateReg.exit.thread.i.i.i:                      ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i.i.i65.i.i.i = zext i8 %340 to i32
  %call5.i.i.i66.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv4.i.i.i65.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i57.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i.i.i1.i) #8
  br label %cleanup

if.end23.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i57.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i.i.i1.i) #8
  %arrayidx25.i.i.i = getelementptr %struct.tda_state, ptr %call7.i.i, i32 0, i32 12, i32 36
  %346 = ptrtoint ptr %arrayidx25.i.i.i to i32
  call void @__asan_load1_noabort(i32 %346)
  %347 = load i8, ptr %arrayidx25.i.i.i, align 8
  %348 = and i8 %347, -4
  store i8 %348, ptr %arrayidx25.i.i.i, align 8
  %arrayidx32.i.i.i = getelementptr %struct.tda_state, ptr %call7.i.i, i32 0, i32 12, i32 38
  %349 = ptrtoint ptr %arrayidx32.i.i.i to i32
  call void @__asan_load1_noabort(i32 %349)
  %350 = load i8, ptr %arrayidx32.i.i.i, align 2
  %351 = or i8 %350, 6
  store i8 %351, ptr %arrayidx32.i.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %data.i.i70.i.i.i) #8
  %352 = getelementptr inbounds i8, ptr %data.i.i70.i.i.i, i32 1
  %353 = ptrtoint ptr %data.i.i70.i.i.i to i32
  call void @__asan_store1_noabort(i32 %353)
  store i8 36, ptr %data.i.i70.i.i.i, align 1
  %354 = getelementptr inbounds i8, ptr %data.i.i70.i.i.i, i32 4
  %355 = call ptr @memset(ptr %354, i32 255, i32 60)
  %356 = call ptr @memcpy(ptr %352, ptr %arrayidx25.i.i.i, i32 3)
  %357 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %call7.i.i, align 8
  %359 = ptrtoint ptr %adr1 to i32
  call void @__asan_load1_noabort(i32 %359)
  %360 = load i8, ptr %adr1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i69.i.i.i) #8
  %361 = getelementptr inbounds i8, ptr %msg.i.i.i69.i.i.i, i32 4
  %362 = ptrtoint ptr %361 to i32
  call void @__asan_store4_noabort(i32 %362)
  store i32 327679, ptr %361, align 4
  %conv.i.i.i73.i.i.i = zext i8 %360 to i16
  %363 = ptrtoint ptr %msg.i.i.i69.i.i.i to i32
  call void @__asan_store2_noabort(i32 %363)
  store i16 %conv.i.i.i73.i.i.i, ptr %msg.i.i.i69.i.i.i, align 4
  %flags.i.i.i74.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i69.i.i.i, i32 0, i32 1
  %364 = ptrtoint ptr %flags.i.i.i74.i.i.i to i32
  call void @__asan_store2_noabort(i32 %364)
  store i16 0, ptr %flags.i.i.i74.i.i.i, align 2
  %buf.i.i.i75.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i69.i.i.i, i32 0, i32 3
  %365 = ptrtoint ptr %buf.i.i.i75.i.i.i to i32
  call void @__asan_store4_noabort(i32 %365)
  store ptr %data.i.i70.i.i.i, ptr %buf.i.i.i75.i.i.i, align 4
  %call.i.i.i76.i.i.i = call i32 @i2c_transfer(ptr noundef %358, ptr noundef nonnull %msg.i.i.i69.i.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i76.i.i.i)
  %cmp.not.i.i.i77.i.i.i = icmp eq i32 %call.i.i.i76.i.i.i, 1
  br i1 %cmp.not.i.i.i77.i.i.i, label %if.end.i2.i, label %PowerScanInit.exit.thread52.i.i

PowerScanInit.exit.thread52.i.i:                  ; preds = %if.end23.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i.i.i78.i.i.i = zext i8 %360 to i32
  %call5.i.i.i79.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv4.i.i.i78.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i69.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data.i.i70.i.i.i) #8
  br label %cleanup

if.end.i2.i:                                      ; preds = %if.end23.i.i.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i69.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data.i.i70.i.i.i) #8
  %call1.i.i = call fastcc i32 @RFTrackingFiltersInit(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp2.i.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp2.i.i, label %if.end.i2.i.cleanup_crit_edge, label %if.end4.i.i

if.end.i2.i.cleanup_crit_edge:                    ; preds = %if.end.i2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4.i.i:                                      ; preds = %if.end.i2.i
  %call5.i.i = call fastcc i32 @RFTrackingFiltersInit(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp6.i.i = icmp slt i32 %call5.i.i, 0
  br i1 %cmp6.i.i, label %if.end4.i.i.cleanup_crit_edge, label %if.end8.i.i

if.end4.i.i.cleanup_crit_edge:                    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end4.i.i
  %call9.i.i = call fastcc i32 @RFTrackingFiltersInit(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %cmp10.i.i = icmp slt i32 %call9.i.i, 0
  br i1 %cmp10.i.i, label %if.end8.i.i.cleanup_crit_edge, label %if.end12.i3.i

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12.i3.i:                                    ; preds = %if.end8.i.i
  %call13.i.i = call fastcc i32 @RFTrackingFiltersInit(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %cmp14.i.i = icmp slt i32 %call13.i.i, 0
  br i1 %cmp14.i.i, label %if.end12.i3.i.cleanup_crit_edge, label %if.end16.i.i

if.end12.i3.i.cleanup_crit_edge:                  ; preds = %if.end12.i3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16.i.i:                                     ; preds = %if.end12.i3.i
  %call17.i.i = call fastcc i32 @RFTrackingFiltersInit(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i)
  %cmp18.i.i = icmp slt i32 %call17.i.i, 0
  br i1 %cmp18.i.i, label %if.end16.i.i.cleanup_crit_edge, label %if.end20.i.i

if.end16.i.i.cleanup_crit_edge:                   ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20.i.i:                                     ; preds = %if.end16.i.i
  %call21.i.i = call fastcc i32 @RFTrackingFiltersInit(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i.i)
  %cmp22.i.i = icmp slt i32 %call21.i.i, 0
  br i1 %cmp22.i.i, label %if.end20.i.i.cleanup_crit_edge, label %if.end24.i4.i

if.end20.i.i.cleanup_crit_edge:                   ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end24.i4.i:                                    ; preds = %if.end20.i.i
  %call25.i.i = call fastcc i32 @RFTrackingFiltersInit(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i.i)
  %cmp26.i.i = icmp slt i32 %call25.i.i, 0
  br i1 %cmp26.i.i, label %if.end24.i4.i.cleanup_crit_edge, label %CalcRFFilterCurve.exit.i

if.end24.i4.i.cleanup_crit_edge:                  ; preds = %if.end24.i4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

CalcRFFilterCurve.exit.i:                         ; preds = %if.end24.i4.i
  %m_TMValue_RFCal.i.i = getelementptr inbounds %struct.tda_state, ptr %call7.i.i, i32 0, i32 20
  %call29.i.i = call fastcc i32 @ThermometerRead(ptr noundef nonnull %call7.i.i, ptr noundef %m_TMValue_RFCal.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i.i)
  %cmp2.i = icmp slt i32 %call29.i.i, 0
  br i1 %cmp2.i, label %CalcRFFilterCurve.exit.i.cleanup_crit_edge, label %if.end4.i

CalcRFFilterCurve.exit.i.cleanup_crit_edge:       ; preds = %CalcRFFilterCurve.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4.i:                                        ; preds = %CalcRFFilterCurve.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i = call fastcc i32 @StandBy(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end4.i, %CalcRFFilterCurve.exit.i.cleanup_crit_edge, %if.end24.i4.i.cleanup_crit_edge, %if.end20.i.i.cleanup_crit_edge, %if.end16.i.i.cleanup_crit_edge, %if.end12.i3.i.cleanup_crit_edge, %if.end8.i.i.cleanup_crit_edge, %if.end4.i.i.cleanup_crit_edge, %if.end.i2.i.cleanup_crit_edge, %PowerScanInit.exit.thread52.i.i, %UpdateReg.exit.thread.i.i.i, %UpdateRegs.exit.thread.i.i.i, %FixedContentsI2CUpdate.exit.thread156.i, %UpdateReg.exit21.thread.i, %UpdateReg.exit35.thread.i, %UpdateRegs.exit.thread.i, %UpdateReg.exit62.thread.i, %UpdateRegs.exit77.thread.i, %UpdateReg.exit91.thread.i, %UpdateRegs.exit106.thread.i, %UpdateReg.exit120.thread.i, %UpdateRegs.exit135.thread.i, %UpdateReg.exit339.thread.i.i, %UpdateRegs.exit325.thread.i.i, %UpdateReg.exit311.thread.i.i, %UpdateRegs.exit297.thread.i.i, %UpdateReg.exit283.thread.i.i, %UpdateReg.exit269.thread.i.i, %UpdateReg.exit255.thread.i.i, %UpdateReg.exit.thread.i.i, %UpdateRegs.exit.thread.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %fe, %UpdateRegs.exit.thread.i.i ], [ %fe, %UpdateReg.exit.thread.i.i ], [ %fe, %UpdateReg.exit255.thread.i.i ], [ %fe, %UpdateReg.exit269.thread.i.i ], [ %fe, %UpdateReg.exit283.thread.i.i ], [ %fe, %UpdateRegs.exit297.thread.i.i ], [ %fe, %UpdateReg.exit311.thread.i.i ], [ %fe, %UpdateRegs.exit325.thread.i.i ], [ %fe, %UpdateReg.exit339.thread.i.i ], [ %fe, %UpdateRegs.exit135.thread.i ], [ %fe, %UpdateReg.exit120.thread.i ], [ %fe, %UpdateRegs.exit106.thread.i ], [ %fe, %UpdateReg.exit91.thread.i ], [ %fe, %UpdateRegs.exit77.thread.i ], [ %fe, %UpdateReg.exit62.thread.i ], [ %fe, %UpdateRegs.exit.thread.i ], [ %fe, %UpdateReg.exit35.thread.i ], [ %fe, %UpdateReg.exit21.thread.i ], [ %fe, %FixedContentsI2CUpdate.exit.thread156.i ], [ %fe, %UpdateRegs.exit.thread.i.i.i ], [ %fe, %UpdateReg.exit.thread.i.i.i ], [ %fe, %PowerScanInit.exit.thread52.i.i ], [ %fe, %if.end.i2.i.cleanup_crit_edge ], [ %fe, %if.end4.i.i.cleanup_crit_edge ], [ %fe, %if.end8.i.i.cleanup_crit_edge ], [ %fe, %if.end12.i3.i.cleanup_crit_edge ], [ %fe, %if.end16.i.i.cleanup_crit_edge ], [ %fe, %if.end20.i.i.cleanup_crit_edge ], [ %fe, %if.end24.i4.i.cleanup_crit_edge ], [ %fe, %CalcRFFilterCurve.exit.i.cleanup_crit_edge ], [ %fe, %if.end4.i ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @release(ptr nocapture noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  tail call void @kfree(ptr noundef %1) #8
  %2 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %tuner_priv, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @init(ptr nocapture noundef readnone %fe) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sleep(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %call = tail call fastcc i32 @StandBy(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_params(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %msg.i.i.i75 = alloca %struct.i2c_msg, align 4
  %msg.i.i = alloca [2 x i8], align 1
  %msg.i.i.i490.i = alloca %struct.i2c_msg, align 4
  %msg.i.i491.i = alloca [2 x i8], align 1
  %msg.i.i.i476.i = alloca %struct.i2c_msg, align 4
  %msg.i.i477.i = alloca [2 x i8], align 1
  %msg.i.i.i462.i = alloca %struct.i2c_msg, align 4
  %data.i.i463.i = alloca [64 x i8], align 1
  %msg.i.i.i448.i = alloca %struct.i2c_msg, align 4
  %msg.i.i449.i = alloca [2 x i8], align 1
  %msg.i.i.i424.i = alloca %struct.i2c_msg, align 4
  %msg.i.i425.i = alloca [2 x i8], align 1
  %msg.i.i.i410.i = alloca %struct.i2c_msg, align 4
  %msg.i.i411.i = alloca [2 x i8], align 1
  %msg.i.i.i396.i = alloca %struct.i2c_msg, align 4
  %data.i.i397.i = alloca [64 x i8], align 1
  %msg.i.i.i384.i = alloca %struct.i2c_msg, align 4
  %msg.i.i.i38 = alloca [2 x i8], align 1
  %msg.i.i.i.i39 = alloca %struct.i2c_msg, align 4
  %data.i.i.i = alloca [64 x i8], align 1
  %msg.i.i.i114.i = alloca %struct.i2c_msg, align 4
  %msg.i.i115.i = alloca [2 x i8], align 1
  %msg.i.i.i.i = alloca %struct.i2c_msg, align 4
  %msg.i.i.i = alloca [2 x i8], align 1
  %TMValue_Current.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %2 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bandwidth_hz, align 4
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %4 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %delivery_system, align 4
  %6 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dtv_property_cache, align 4
  %m_Frequency = getelementptr inbounds %struct.tda_state, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %m_Frequency to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %m_Frequency, align 4
  %9 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 3, label %entry.sw.bb_crit_edge
    i32 16, label %entry.sw.bb_crit_edge121
    i32 1, label %entry.sw.bb6_crit_edge
    i32 18, label %entry.sw.bb6_crit_edge122
  ]

entry.sw.bb6_crit_edge122:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb6

entry.sw.bb6_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb6

entry.sw.bb_crit_edge121:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge121
  %10 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %3, label %sw.bb.cleanup_crit_edge [
    i32 6000000, label %sw.bb.do.body_crit_edge
    i32 7000000, label %sw.bb4
    i32 8000000, label %sw.bb5
  ]

sw.bb.do.body_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb4:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

sw.bb5:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

sw.bb6:                                           ; preds = %entry.sw.bb6_crit_edge, %entry.sw.bb6_crit_edge122
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000001, i32 %3)
  %cmp = icmp ult i32 %3, 6000001
  br i1 %cmp, label %sw.bb6.do.body_crit_edge, label %if.else

sw.bb6.do.body_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.else:                                          ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000001, i32 %3)
  %cmp7 = icmp ult i32 %3, 7000001
  %. = select i1 %cmp7, i32 16, i32 17
  br label %do.body

do.body:                                          ; preds = %if.else, %sw.bb6.do.body_crit_edge, %sw.bb5, %sw.bb4, %sw.bb.do.body_crit_edge
  %Standard.0 = phi i32 [ 12, %sw.bb5 ], [ 11, %sw.bb4 ], [ 10, %sw.bb.do.body_crit_edge ], [ 15, %sw.bb6.do.body_crit_edge ], [ %., %if.else ]
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %do.body
  %i.0.i.i = phi i32 [ 0, %do.body ], [ %add.i.i, %while.cond.i.i.while.cond.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.SMapI, ptr @m_RF_Cal_Map, i32 %i.0.i.i
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.not.i.i = icmp ne i32 %12, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %7)
  %cmp3.i.i = icmp ult i32 %12, %7
  %or.cond.i.i = and i1 %cmp.not.i.i, %cmp3.i.i
  %add.i.i = add i32 %i.0.i.i, 1
  br i1 %or.cond.i.i, label %while.cond.i.i.while.cond.i.i_crit_edge, label %while.end.i.i

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp6.i.i = icmp eq i32 %12, 0
  br i1 %cmp6.i.i, label %while.end.i.i.cleanup_crit_edge, label %lor.lhs.false.i

while.end.i.i.cleanup_crit_edge:                  ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %while.end.i.i
  %m_Param.i.i = getelementptr %struct.SMapI, ptr @m_RF_Cal_Map, i32 %i.0.i.i, i32 1
  %13 = ptrtoint ptr %m_Param.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %m_Param.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 47900000, i32 %7)
  %cmp1.i.i = icmp ugt i32 %7, 47900000
  br i1 %cmp1.i.i, label %while.body.i.i, label %lor.lhs.false.i.lor.lhs.false2.i_crit_edge

lor.lhs.false.i.lor.lhs.false2.i_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false2.i

while.body.i.i:                                   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 61100000, i32 %7)
  %cmp1.1.i.i = icmp ugt i32 %7, 61100000
  br i1 %cmp1.1.i.i, label %while.body.1.i.i, label %while.body.i.i.lor.lhs.false2.i_crit_edge

while.body.i.i.lor.lhs.false2.i_crit_edge:        ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false2.i

while.body.1.i.i:                                 ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 152600000, i32 %7)
  %cmp1.2.i.i = icmp ugt i32 %7, 152600000
  br i1 %cmp1.2.i.i, label %while.body.2.i.i, label %while.body.1.i.i.lor.lhs.false2.i_crit_edge

while.body.1.i.i.lor.lhs.false2.i_crit_edge:      ; preds = %while.body.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false2.i

while.body.2.i.i:                                 ; preds = %while.body.1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 164700000, i32 %7)
  %cmp1.3.i.i = icmp ugt i32 %7, 164700000
  br i1 %cmp1.3.i.i, label %while.body.3.i.i, label %while.body.2.i.i.lor.lhs.false2.i_crit_edge

while.body.2.i.i.lor.lhs.false2.i_crit_edge:      ; preds = %while.body.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false2.i

while.body.3.i.i:                                 ; preds = %while.body.2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 203500000, i32 %7)
  %cmp1.4.i.i = icmp ugt i32 %7, 203500000
  br i1 %cmp1.4.i.i, label %while.body.4.i.i, label %while.body.3.i.i.lor.lhs.false2.i_crit_edge

while.body.3.i.i.lor.lhs.false2.i_crit_edge:      ; preds = %while.body.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false2.i

while.body.4.i.i:                                 ; preds = %while.body.3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 457800000, i32 %7)
  %cmp1.5.i.i = icmp ugt i32 %7, 457800000
  br i1 %cmp1.5.i.i, label %while.body.5.i.i, label %while.body.4.i.i.lor.lhs.false2.i_crit_edge

while.body.4.i.i.lor.lhs.false2.i_crit_edge:      ; preds = %while.body.4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false2.i

while.body.5.i.i:                                 ; preds = %while.body.4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 865000000, i32 %7)
  %cmp1.6.i.i = icmp ugt i32 %7, 865000000
  br i1 %cmp1.6.i.i, label %while.body.5.i.i.cleanup_crit_edge, label %while.body.5.i.i.lor.lhs.false2.i_crit_edge

while.body.5.i.i.lor.lhs.false2.i_crit_edge:      ; preds = %while.body.5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false2.i

while.body.5.i.i.cleanup_crit_edge:               ; preds = %while.body.5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false2.i:                                 ; preds = %while.body.5.i.i.lor.lhs.false2.i_crit_edge, %while.body.4.i.i.lor.lhs.false2.i_crit_edge, %while.body.3.i.i.lor.lhs.false2.i_crit_edge, %while.body.2.i.i.lor.lhs.false2.i_crit_edge, %while.body.1.i.i.lor.lhs.false2.i_crit_edge, %while.body.i.i.lor.lhs.false2.i_crit_edge, %lor.lhs.false.i.lor.lhs.false2.i_crit_edge
  %i.06.lcssa.i.i = phi i32 [ 0, %lor.lhs.false.i.lor.lhs.false2.i_crit_edge ], [ 1, %while.body.i.i.lor.lhs.false2.i_crit_edge ], [ 2, %while.body.1.i.i.lor.lhs.false2.i_crit_edge ], [ 3, %while.body.2.i.i.lor.lhs.false2.i_crit_edge ], [ 4, %while.body.3.i.i.lor.lhs.false2.i_crit_edge ], [ 5, %while.body.4.i.i.lor.lhs.false2.i_crit_edge ], [ 6, %while.body.5.i.i.lor.lhs.false2.i_crit_edge ]
  br label %while.cond.i108.i

while.cond.i108.i:                                ; preds = %while.cond.i108.i.while.cond.i108.i_crit_edge, %lor.lhs.false2.i
  %i.0.i102.i = phi i32 [ 0, %lor.lhs.false2.i ], [ %add.i107.i, %while.cond.i108.i.while.cond.i108.i_crit_edge ]
  %arrayidx.i103.i = getelementptr %struct.SMap, ptr @m_RF_Cal_DC_Over_DT_Map, i32 %i.0.i102.i
  %15 = ptrtoint ptr %arrayidx.i103.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i103.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.not.i104.i = icmp ne i32 %16, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %7)
  %cmp3.i105.i = icmp ult i32 %16, %7
  %or.cond.i106.i = and i1 %cmp.not.i104.i, %cmp3.i105.i
  %add.i107.i = add i32 %i.0.i102.i, 1
  br i1 %or.cond.i106.i, label %while.cond.i108.i.while.cond.i108.i_crit_edge, label %while.end.i110.i

while.cond.i108.i.while.cond.i108.i_crit_edge:    ; preds = %while.cond.i108.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i108.i

while.end.i110.i:                                 ; preds = %while.cond.i108.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp6.i109.i = icmp eq i32 %16, 0
  br i1 %cmp6.i109.i, label %while.end.i110.i.cleanup_crit_edge, label %do.body.i

while.end.i110.i.cleanup_crit_edge:               ; preds = %while.end.i110.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body.i:                                        ; preds = %while.end.i110.i
  %m_Param.i111.i = getelementptr %struct.SMap, ptr @m_RF_Cal_DC_Over_DT_Map, i32 %i.0.i102.i, i32 1
  %17 = ptrtoint ptr %m_Param.i111.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %m_Param.i111.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %TMValue_Current.i) #8
  %19 = ptrtoint ptr %TMValue_Current.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %TMValue_Current.i, align 1, !annotation !70
  %arrayidx.i = getelementptr %struct.tda_state, ptr %1, i32 0, i32 13, i32 %i.06.lcssa.i.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i, align 4
  %arrayidx11.i = getelementptr %struct.tda_state, ptr %1, i32 0, i32 14, i32 %i.06.lcssa.i.i
  %22 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx11.i, align 4
  %arrayidx13.i = getelementptr %struct.tda_state, ptr %1, i32 0, i32 15, i32 %i.06.lcssa.i.i
  %24 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx13.i, align 4
  %arrayidx15.i = getelementptr %struct.tda_state, ptr %1, i32 0, i32 17, i32 %i.06.lcssa.i.i
  %26 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx15.i, align 4
  %arrayidx17.i = getelementptr %struct.tda_state, ptr %1, i32 0, i32 18, i32 %i.06.lcssa.i.i
  %28 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx17.i, align 4
  %arrayidx18.i = getelementptr %struct.tda_state, ptr %1, i32 0, i32 12, i32 5
  %30 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx18.i, align 1
  %32 = and i8 %31, 31
  store i8 %32, ptr %arrayidx18.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i.i) #8
  %33 = getelementptr inbounds [2 x i8], ptr %msg.i.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 5, ptr %msg.i.i.i, align 1
  %35 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %32, ptr %33, align 1
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %adr.i.i.i = getelementptr inbounds %struct.tda_state, ptr %1, i32 0, i32 1
  %38 = ptrtoint ptr %adr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %adr.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i.i) #8
  %40 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 196607, ptr %40, align 4
  %conv.i.i.i.i = zext i8 %39 to i16
  %42 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %flags.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 0, ptr %flags.i.i.i.i, align 2
  %buf.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i.i, i32 0, i32 3
  %44 = ptrtoint ptr %buf.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %msg.i.i.i, ptr %buf.i.i.i.i, align 4
  %call.i.i.i.i = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %msg.i.i.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 1
  br i1 %cmp.not.i.i.i.i, label %if.end23.i, label %UpdateReg.exit.thread.i

UpdateReg.exit.thread.i:                          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i.i.i.i = zext i8 %39 to i32
  %call5.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv4.i.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i.i) #8
  br label %RFTrackingFiltersCorrection.exit.thread80

if.end23.i:                                       ; preds = %do.body.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i.i) #8
  %call24.i = call fastcc i32 @ThermometerRead(ptr noundef %1, ptr noundef nonnull %TMValue_Current.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %cmp25.i = icmp slt i32 %call24.i, 0
  br i1 %cmp25.i, label %if.end23.i.RFTrackingFiltersCorrection.exit.thread80_crit_edge, label %if.end28.i

if.end23.i.RFTrackingFiltersCorrection.exit.thread80_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %RFTrackingFiltersCorrection.exit.thread80

if.end28.i:                                       ; preds = %if.end23.i
  %45 = add i32 %21, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %7)
  %.not.i = icmp ult i32 %45, %7
  %sub36.i = sub i32 %7, %21
  %..i = select i1 %.not.i, i32 %27, i32 %23
  %.145.i = select i1 %.not.i, i32 %29, i32 %25
  %mul37.i = mul i32 %..i, %sub36.i
  %conv41.i = zext i8 %18 to i32
  %46 = ptrtoint ptr %TMValue_Current.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %TMValue_Current.i, align 1
  %conv42.i = zext i8 %47 to i32
  %m_TMValue_RFCal.i = getelementptr inbounds %struct.tda_state, ptr %1, i32 0, i32 20
  %48 = ptrtoint ptr %m_TMValue_RFCal.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %m_TMValue_RFCal.i, align 4
  %conv43.i = zext i8 %49 to i32
  %sub44.i = sub nsw i32 %conv42.i, %conv43.i
  %mul45.i = mul nsw i32 %sub44.i, %conv41.i
  %div.i = sdiv i32 %mul45.i, 1000
  %add38.i = add i32 %.145.i, %14
  %Capprox.0.i = add i32 %add38.i, %mul37.i
  %add46.i = add i32 %Capprox.0.i, %div.i
  %50 = call i32 @llvm.smin.i32(i32 %add46.i, i32 255) #8
  %51 = call i32 @llvm.smax.i32(i32 %50, i32 0) #8
  %52 = trunc i32 %51 to i8
  %arrayidx58.i = getelementptr %struct.tda_state, ptr %1, i32 0, i32 12, i32 29
  %53 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %arrayidx58.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i115.i) #8
  %54 = getelementptr inbounds [2 x i8], ptr %msg.i.i115.i, i32 0, i32 1
  %55 = ptrtoint ptr %msg.i.i115.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 29, ptr %msg.i.i115.i, align 1
  %56 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %52, ptr %54, align 1
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 4
  %59 = ptrtoint ptr %adr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %adr.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i114.i) #8
  %61 = getelementptr inbounds i8, ptr %msg.i.i.i114.i, i32 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 196607, ptr %61, align 4
  %conv.i.i.i118.i = zext i8 %60 to i16
  %63 = ptrtoint ptr %msg.i.i.i114.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %conv.i.i.i118.i, ptr %msg.i.i.i114.i, align 4
  %flags.i.i.i119.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i114.i, i32 0, i32 1
  %64 = ptrtoint ptr %flags.i.i.i119.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 0, ptr %flags.i.i.i119.i, align 2
  %buf.i.i.i120.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i114.i, i32 0, i32 3
  %65 = ptrtoint ptr %buf.i.i.i120.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %msg.i.i115.i, ptr %buf.i.i.i120.i, align 4
  %call.i.i.i121.i = call i32 @i2c_transfer(ptr noundef %58, ptr noundef nonnull %msg.i.i.i114.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i121.i)
  %cmp.not.i.i.i122.i = icmp eq i32 %call.i.i.i121.i, 1
  br i1 %cmp.not.i.i.i122.i, label %if.end16, label %66

66:                                               ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i.i.i123.i = zext i8 %60 to i32
  %call5.i.i.i124.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv4.i.i.i123.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i114.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i115.i) #8
  br label %RFTrackingFiltersCorrection.exit.thread80

RFTrackingFiltersCorrection.exit.thread80:        ; preds = %66, %if.end23.i.RFTrackingFiltersCorrection.exit.thread80_crit_edge, %UpdateReg.exit.thread.i
  %status.0.i.ph = phi i32 [ -1, %66 ], [ -1, %UpdateReg.exit.thread.i ], [ %call24.i, %if.end23.i.RFTrackingFiltersCorrection.exit.thread80_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %TMValue_Current.i) #8
  br label %cleanup

if.end16:                                         ; preds = %if.end28.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i114.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i115.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %TMValue_Current.i) #8
  %67 = ptrtoint ptr %m_Frequency to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %m_Frequency, align 4
  %arrayidx.i40 = getelementptr [19 x %struct.SStandardParam], ptr @m_StandardTable, i32 0, i32 %Standard.0
  %69 = ptrtoint ptr %arrayidx.i40 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx.i40, align 4
  %IF.i = getelementptr inbounds %struct.tda_state, ptr %1, i32 0, i32 3
  %71 = ptrtoint ptr %IF.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %IF.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 62000000, i32 %68)
  %cmp3.i.i44 = icmp ugt i32 %68, 62000000
  br i1 %cmp3.i.i44, label %while.cond.i.i47.1, label %if.end16.while.end.i.i49_crit_edge

if.end16.while.end.i.i49_crit_edge:               ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i49

while.cond.i.i47.1:                               ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 84000000, i32 %68)
  %cmp3.i.i44.1 = icmp ugt i32 %68, 84000000
  br i1 %cmp3.i.i44.1, label %while.cond.i.i47.2, label %while.cond.i.i47.1.while.end.i.i49_crit_edge

while.cond.i.i47.1.while.end.i.i49_crit_edge:     ; preds = %while.cond.i.i47.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i49

while.cond.i.i47.2:                               ; preds = %while.cond.i.i47.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000000, i32 %68)
  %cmp3.i.i44.2 = icmp ugt i32 %68, 100000000
  br i1 %cmp3.i.i44.2, label %while.cond.i.i47.3, label %while.cond.i.i47.2.while.end.i.i49_crit_edge

while.cond.i.i47.2.while.end.i.i49_crit_edge:     ; preds = %while.cond.i.i47.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i49

while.cond.i.i47.3:                               ; preds = %while.cond.i.i47.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 140000000, i32 %68)
  %cmp3.i.i44.3 = icmp ugt i32 %68, 140000000
  br i1 %cmp3.i.i44.3, label %while.cond.i.i47.4, label %while.cond.i.i47.3.while.end.i.i49_crit_edge

while.cond.i.i47.3.while.end.i.i49_crit_edge:     ; preds = %while.cond.i.i47.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i49

while.cond.i.i47.4:                               ; preds = %while.cond.i.i47.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 170000000, i32 %68)
  %cmp3.i.i44.4 = icmp ugt i32 %68, 170000000
  br i1 %cmp3.i.i44.4, label %while.cond.i.i47.5, label %while.cond.i.i47.4.while.end.i.i49_crit_edge

while.cond.i.i47.4.while.end.i.i49_crit_edge:     ; preds = %while.cond.i.i47.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i49

while.cond.i.i47.5:                               ; preds = %while.cond.i.i47.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 180000000, i32 %68)
  %cmp3.i.i44.5 = icmp ugt i32 %68, 180000000
  br i1 %cmp3.i.i44.5, label %while.cond.i.i47.6, label %while.cond.i.i47.5.while.end.i.i49_crit_edge

while.cond.i.i47.5.while.end.i.i49_crit_edge:     ; preds = %while.cond.i.i47.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i49

while.cond.i.i47.6:                               ; preds = %while.cond.i.i47.5
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 865000000, i32 %68)
  %cmp3.i.i44.6 = icmp ugt i32 %68, 865000000
  %spec.select = select i1 %cmp3.i.i44.6, i32 7, i32 6
  %spec.select118 = select i1 %cmp3.i.i44.6, i1 true, i1 false
  br label %while.end.i.i49

while.end.i.i49:                                  ; preds = %while.cond.i.i47.6, %while.cond.i.i47.5.while.end.i.i49_crit_edge, %while.cond.i.i47.4.while.end.i.i49_crit_edge, %while.cond.i.i47.3.while.end.i.i49_crit_edge, %while.cond.i.i47.2.while.end.i.i49_crit_edge, %while.cond.i.i47.1.while.end.i.i49_crit_edge, %if.end16.while.end.i.i49_crit_edge
  %i.0.i.i41.lcssa = phi i32 [ 0, %if.end16.while.end.i.i49_crit_edge ], [ 1, %while.cond.i.i47.1.while.end.i.i49_crit_edge ], [ 2, %while.cond.i.i47.2.while.end.i.i49_crit_edge ], [ 3, %while.cond.i.i47.3.while.end.i.i49_crit_edge ], [ 4, %while.cond.i.i47.4.while.end.i.i49_crit_edge ], [ 5, %while.cond.i.i47.5.while.end.i.i49_crit_edge ], [ %spec.select, %while.cond.i.i47.6 ]
  %cmp6.i.i48 = phi i1 [ false, %if.end16.while.end.i.i49_crit_edge ], [ false, %while.cond.i.i47.1.while.end.i.i49_crit_edge ], [ false, %while.cond.i.i47.2.while.end.i.i49_crit_edge ], [ false, %while.cond.i.i47.3.while.end.i.i49_crit_edge ], [ false, %while.cond.i.i47.4.while.end.i.i49_crit_edge ], [ false, %while.cond.i.i47.5.while.end.i.i49_crit_edge ], [ %spec.select118, %while.cond.i.i47.6 ]
  br i1 %cmp6.i.i48, label %while.end.i.i49.do.end.i_crit_edge, label %land.lhs.true.i

while.end.i.i49.do.end.i_crit_edge:               ; preds = %while.end.i.i49
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %while.end.i.i49
  %m_Param.i.i50 = getelementptr %struct.SMap, ptr @m_BP_Filter_Map, i32 %i.0.i.i41.lcssa, i32 1
  %72 = ptrtoint ptr %m_Param.i.i50 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %m_Param.i.i50, align 4
  br label %while.cond.i364.i

while.cond.i364.i:                                ; preds = %while.cond.i364.i.while.cond.i364.i_crit_edge, %land.lhs.true.i
  %i.0.i358.i = phi i32 [ 0, %land.lhs.true.i ], [ %add.i363.i, %while.cond.i364.i.while.cond.i364.i_crit_edge ]
  %arrayidx.i359.i = getelementptr %struct.SMap, ptr @m_GainTaper_Map, i32 %i.0.i358.i
  %74 = ptrtoint ptr %arrayidx.i359.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx.i359.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp.not.i360.i = icmp ne i32 %75, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %68)
  %cmp3.i361.i = icmp ult i32 %75, %68
  %or.cond.i362.i = and i1 %cmp.not.i360.i, %cmp3.i361.i
  %add.i363.i = add nuw nsw i32 %i.0.i358.i, 1
  br i1 %or.cond.i362.i, label %while.cond.i364.i.while.cond.i364.i_crit_edge, label %while.end.i366.i

while.cond.i364.i.while.cond.i364.i_crit_edge:    ; preds = %while.cond.i364.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i364.i

while.end.i366.i:                                 ; preds = %while.cond.i364.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp6.i365.i = icmp eq i32 %75, 0
  br i1 %cmp6.i365.i, label %while.end.i366.i.do.end.i_crit_edge, label %land.lhs.true2.i

while.end.i366.i.do.end.i_crit_edge:              ; preds = %while.end.i366.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true2.i:                                 ; preds = %while.end.i366.i
  %m_Param.i367.i = getelementptr %struct.SMap, ptr @m_GainTaper_Map, i32 %i.0.i358.i, i32 1
  %76 = ptrtoint ptr %m_Param.i367.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %m_Param.i367.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000000, i32 %68)
  %cmp3.i373.i = icmp ugt i32 %68, 200000000
  br i1 %cmp3.i373.i, label %while.cond.i376.i.1, label %land.lhs.true2.i.while.end.i378.i_crit_edge

land.lhs.true2.i.while.end.i378.i_crit_edge:      ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i378.i

while.cond.i376.i.1:                              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000000, i32 %68)
  %cmp3.i373.i.1 = icmp ugt i32 %68, 400000000
  br i1 %cmp3.i373.i.1, label %while.cond.i376.i.2, label %while.cond.i376.i.1.while.end.i378.i_crit_edge

while.cond.i376.i.1.while.end.i378.i_crit_edge:   ; preds = %while.cond.i376.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i378.i

while.cond.i376.i.2:                              ; preds = %while.cond.i376.i.1
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 865000000, i32 %68)
  %cmp3.i373.i.2 = icmp ugt i32 %68, 865000000
  %spec.select119 = select i1 %cmp3.i373.i.2, i32 3, i32 2
  %spec.select120 = select i1 %cmp3.i373.i.2, i1 true, i1 false
  br label %while.end.i378.i

while.end.i378.i:                                 ; preds = %while.cond.i376.i.2, %while.cond.i376.i.1.while.end.i378.i_crit_edge, %land.lhs.true2.i.while.end.i378.i_crit_edge
  %i.0.i370.i.lcssa = phi i32 [ 0, %land.lhs.true2.i.while.end.i378.i_crit_edge ], [ 1, %while.cond.i376.i.1.while.end.i378.i_crit_edge ], [ %spec.select119, %while.cond.i376.i.2 ]
  %cmp6.i377.i = phi i1 [ false, %land.lhs.true2.i.while.end.i378.i_crit_edge ], [ false, %while.cond.i376.i.1.while.end.i378.i_crit_edge ], [ %spec.select120, %while.cond.i376.i.2 ]
  br i1 %cmp6.i377.i, label %while.end.i378.i.do.end.i_crit_edge, label %land.lhs.true4.i

while.end.i378.i.do.end.i_crit_edge:              ; preds = %while.end.i378.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %while.end.i378.i
  %m_Param.i379.i = getelementptr %struct.SMap, ptr @m_IR_Meas_Map, i32 %i.0.i370.i.lcssa, i32 1
  %78 = ptrtoint ptr %m_Param.i379.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %m_Param.i379.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 47900000, i32 %68)
  %cmp1.i.i51 = icmp ugt i32 %68, 47900000
  br i1 %cmp1.i.i51, label %while.body.i.i53, label %land.lhs.true4.i.do.body7.i_crit_edge

land.lhs.true4.i.do.body7.i_crit_edge:            ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body7.i

while.body.i.i53:                                 ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 61100000, i32 %68)
  %cmp1.1.i.i52 = icmp ugt i32 %68, 61100000
  br i1 %cmp1.1.i.i52, label %while.body.1.i.i55, label %while.body.i.i53.do.body7.i_crit_edge

while.body.i.i53.do.body7.i_crit_edge:            ; preds = %while.body.i.i53
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body7.i

while.body.1.i.i55:                               ; preds = %while.body.i.i53
  call void @__sanitizer_cov_trace_const_cmp4(i32 152600000, i32 %68)
  %cmp1.2.i.i54 = icmp ugt i32 %68, 152600000
  br i1 %cmp1.2.i.i54, label %while.body.2.i.i57, label %while.body.1.i.i55.do.body7.i_crit_edge

while.body.1.i.i55.do.body7.i_crit_edge:          ; preds = %while.body.1.i.i55
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body7.i

while.body.2.i.i57:                               ; preds = %while.body.1.i.i55
  call void @__sanitizer_cov_trace_const_cmp4(i32 164700000, i32 %68)
  %cmp1.3.i.i56 = icmp ugt i32 %68, 164700000
  br i1 %cmp1.3.i.i56, label %while.body.3.i.i59, label %while.body.2.i.i57.do.body7.i_crit_edge

while.body.2.i.i57.do.body7.i_crit_edge:          ; preds = %while.body.2.i.i57
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body7.i

while.body.3.i.i59:                               ; preds = %while.body.2.i.i57
  call void @__sanitizer_cov_trace_const_cmp4(i32 203500000, i32 %68)
  %cmp1.4.i.i58 = icmp ugt i32 %68, 203500000
  br i1 %cmp1.4.i.i58, label %while.body.4.i.i61, label %while.body.3.i.i59.do.body7.i_crit_edge

while.body.3.i.i59.do.body7.i_crit_edge:          ; preds = %while.body.3.i.i59
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body7.i

while.body.4.i.i61:                               ; preds = %while.body.3.i.i59
  call void @__sanitizer_cov_trace_const_cmp4(i32 457800000, i32 %68)
  %cmp1.5.i.i60 = icmp ugt i32 %68, 457800000
  br i1 %cmp1.5.i.i60, label %while.body.5.i.i63, label %while.body.4.i.i61.do.body7.i_crit_edge

while.body.4.i.i61.do.body7.i_crit_edge:          ; preds = %while.body.4.i.i61
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body7.i

while.body.5.i.i63:                               ; preds = %while.body.4.i.i61
  call void @__sanitizer_cov_trace_const_cmp4(i32 865000000, i32 %68)
  %cmp1.6.i.i62 = icmp ugt i32 %68, 865000000
  br i1 %cmp1.6.i.i62, label %while.body.5.i.i63.do.end.i_crit_edge, label %while.body.5.i.i63.do.body7.i_crit_edge

while.body.5.i.i63.do.body7.i_crit_edge:          ; preds = %while.body.5.i.i63
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body7.i

while.body.5.i.i63.do.end.i_crit_edge:            ; preds = %while.body.5.i.i63
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %while.body.5.i.i63.do.end.i_crit_edge, %while.end.i378.i.do.end.i_crit_edge, %while.end.i366.i.do.end.i_crit_edge, %while.end.i.i49.do.end.i_crit_edge
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #12
  br label %cleanup

do.body7.i:                                       ; preds = %while.body.5.i.i63.do.body7.i_crit_edge, %while.body.4.i.i61.do.body7.i_crit_edge, %while.body.3.i.i59.do.body7.i_crit_edge, %while.body.2.i.i57.do.body7.i_crit_edge, %while.body.1.i.i55.do.body7.i_crit_edge, %while.body.i.i53.do.body7.i_crit_edge, %land.lhs.true4.i.do.body7.i_crit_edge
  %i.06.lcssa.i.i64 = phi i8 [ 0, %land.lhs.true4.i.do.body7.i_crit_edge ], [ 32, %while.body.i.i53.do.body7.i_crit_edge ], [ 64, %while.body.1.i.i55.do.body7.i_crit_edge ], [ 96, %while.body.2.i.i57.do.body7.i_crit_edge ], [ -128, %while.body.3.i.i59.do.body7.i_crit_edge ], [ -96, %while.body.4.i.i61.do.body7.i_crit_edge ], [ -64, %while.body.5.i.i63.do.body7.i_crit_edge ]
  %80 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx18.i, align 1
  %82 = and i8 %81, -32
  %m_EP3_4_0.i = getelementptr [19 x %struct.SStandardParam], ptr @m_StandardTable, i32 0, i32 %Standard.0, i32 2
  %83 = ptrtoint ptr %m_EP3_4_0.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %m_EP3_4_0.i, align 4
  %.masked.i = and i8 %84, -5
  %85 = or i8 %.masked.i, %82
  store i8 %85, ptr %arrayidx18.i, align 1
  %m_EP4.i = getelementptr inbounds %struct.tda_state, ptr %1, i32 0, i32 8
  %86 = ptrtoint ptr %m_EP4.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %m_EP4.i, align 4
  %arrayidx26.i = getelementptr %struct.tda_state, ptr %1, i32 0, i32 12, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %Standard.0)
  %cmp38.i = icmp ult i32 %Standard.0, 15
  %m_IFLevelDVBC.i = getelementptr inbounds %struct.tda_state, ptr %1, i32 0, i32 6
  %m_IFLevelDVBT.i = getelementptr inbounds %struct.tda_state, ptr %1, i32 0, i32 7
  %.pn.in.i = select i1 %cmp38.i, ptr %m_IFLevelDVBT.i, ptr %m_IFLevelDVBC.i
  %88 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %.pn.i = load i8, ptr %.pn.in.i, align 1
  %storemerge.i = or i8 %.pn.i, %87
  %89 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %storemerge.i, ptr %arrayidx26.i, align 2
  %arrayidx83.i = getelementptr %struct.tda_state, ptr %1, i32 0, i32 12, i32 12
  %90 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx83.i, align 4
  %92 = or i8 %91, -128
  store i8 %92, ptr %arrayidx83.i, align 4
  %m_EB22.i = getelementptr [19 x %struct.SStandardParam], ptr @m_StandardTable, i32 0, i32 %Standard.0, i32 3
  %93 = ptrtoint ptr %m_EB22.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %m_EB22.i, align 1
  %arrayidx98.i = getelementptr %struct.tda_state, ptr %1, i32 0, i32 12, i32 37
  %95 = ptrtoint ptr %arrayidx98.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %94, ptr %arrayidx98.i, align 1
  %arrayidx109.i = getelementptr %struct.tda_state, ptr %1, i32 0, i32 12, i32 38
  %96 = ptrtoint ptr %arrayidx109.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx109.i, align 2
  %98 = and i8 %97, -7
  store i8 %98, ptr %arrayidx109.i, align 2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %data.i.i.i) #8
  %99 = getelementptr inbounds i8, ptr %data.i.i.i, i32 1
  %100 = getelementptr inbounds i8, ptr %data.i.i.i, i32 3
  %101 = call ptr @memset(ptr %100, i32 255, i32 61)
  %102 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 37, ptr %data.i.i.i, align 1
  %103 = ptrtoint ptr %arrayidx98.i to i32
  call void @__asan_loadN_noabort(i32 %103, i32 2)
  %104 = load i16, ptr %arrayidx98.i, align 1
  %105 = ptrtoint ptr %99 to i32
  call void @__asan_storeN_noabort(i32 %105, i32 2)
  store i16 %104, ptr %99, align 1
  %106 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %1, align 4
  %108 = ptrtoint ptr %adr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %adr.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i.i39) #8
  %110 = getelementptr inbounds i8, ptr %msg.i.i.i.i39, i32 4
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 262143, ptr %110, align 4
  %conv.i.i.i.i66 = zext i8 %109 to i16
  %112 = ptrtoint ptr %msg.i.i.i.i39 to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %conv.i.i.i.i66, ptr %msg.i.i.i.i39, align 4
  %flags.i.i.i.i67 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i.i39, i32 0, i32 1
  %113 = ptrtoint ptr %flags.i.i.i.i67 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 0, ptr %flags.i.i.i.i67, align 2
  %buf.i.i.i.i68 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i.i39, i32 0, i32 3
  %114 = ptrtoint ptr %buf.i.i.i.i68 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %data.i.i.i, ptr %buf.i.i.i.i68, align 4
  %call.i.i.i.i69 = call i32 @i2c_transfer(ptr noundef %107, ptr noundef nonnull %msg.i.i.i.i39, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i.i69)
  %cmp.not.i.i.i.i70 = icmp eq i32 %call.i.i.i.i69, 1
  br i1 %cmp.not.i.i.i.i70, label %if.end118.i, label %UpdateRegs.exit.thread.i

UpdateRegs.exit.thread.i:                         ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i.i.i.i71 = zext i8 %109 to i32
  %call5.i.i.i.i72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv4.i.i.i.i71) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i.i39) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data.i.i.i) #8
  br label %cleanup

if.end118.i:                                      ; preds = %do.body7.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i.i39) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data.i.i.i) #8
  %arrayidx120.i = getelementptr %struct.tda_state, ptr %1, i32 0, i32 12, i32 3
  %115 = ptrtoint ptr %arrayidx120.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx120.i, align 1
  %117 = and i8 %116, -72
  %118 = or i8 %73, %117
  %or125353.i = or i8 %118, 64
  store i8 %or125353.i, ptr %arrayidx120.i, align 1
  %arrayidx130.i = getelementptr %struct.tda_state, ptr %1, i32 0, i32 12, i32 7
  %119 = ptrtoint ptr %arrayidx130.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx130.i, align 1
  %121 = and i8 %120, -8
  %or134354.i = or i8 %121, %79
  store i8 %or134354.i, ptr %arrayidx130.i, align 1
  %or140.i = or i8 %i.06.lcssa.i.i64, %77
  %arrayidx143.i = getelementptr %struct.tda_state, ptr %1, i32 0, i32 12, i32 4
  %122 = ptrtoint ptr %arrayidx143.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %or140.i, ptr %arrayidx143.i, align 4
  %arrayidx145.i = getelementptr %struct.tda_state, ptr %1, i32 0, i32 12, i32 16
  %123 = ptrtoint ptr %arrayidx145.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx145.i, align 4
  %125 = and i8 %124, -8
  %m_bMaster.i = getelementptr inbounds %struct.tda_state, ptr %1, i32 0, i32 10
  %126 = ptrtoint ptr %m_bMaster.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %m_bMaster.i, align 2, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool148.not.i = icmp eq i8 %127, 0
  %cond150.i = select i1 %tobool148.not.i, i8 0, i8 4
  %or151.i = or i8 %cond150.i, %125
  %128 = ptrtoint ptr %arrayidx145.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %or151.i, ptr %arrayidx145.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i.i38) #8
  %129 = getelementptr inbounds [2 x i8], ptr %msg.i.i.i38, i32 0, i32 1
  %130 = ptrtoint ptr %msg.i.i.i38 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 16, ptr %msg.i.i.i38, align 1
  %131 = ptrtoint ptr %129 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %or151.i, ptr %129, align 1
  %132 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %1, align 4
  %134 = ptrtoint ptr %adr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %adr.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i384.i) #8
  %136 = getelementptr inbounds i8, ptr %msg.i.i.i384.i, i32 4
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 196607, ptr %136, align 4
  %conv.i.i.i387.i = zext i8 %135 to i16
  %138 = ptrtoint ptr %msg.i.i.i384.i to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 %conv.i.i.i387.i, ptr %msg.i.i.i384.i, align 4
  %flags.i.i.i388.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i384.i, i32 0, i32 1
  %139 = ptrtoint ptr %flags.i.i.i388.i to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 0, ptr %flags.i.i.i388.i, align 2
  %buf.i.i.i389.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i384.i, i32 0, i32 3
  %140 = ptrtoint ptr %buf.i.i.i389.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %msg.i.i.i38, ptr %buf.i.i.i389.i, align 4
  %call.i.i.i390.i = call i32 @i2c_transfer(ptr noundef %133, ptr noundef nonnull %msg.i.i.i384.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i390.i)
  %cmp.not.i.i.i391.i = icmp eq i32 %call.i.i.i390.i, 1
  br i1 %cmp.not.i.i.i391.i, label %if.end159.i, label %UpdateReg.exit.thread.i73

UpdateReg.exit.thread.i73:                        ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i.i.i392.i = zext i8 %135 to i32
  %call5.i.i.i393.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv4.i.i.i392.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i384.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i.i38) #8
  br label %cleanup

if.end159.i:                                      ; preds = %if.end118.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i384.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i.i38) #8
  %141 = ptrtoint ptr %m_bMaster.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %m_bMaster.i, align 2, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %tobool161.not.i = icmp eq i8 %142, 0
  %add194.i = add i32 %70, %68
  br i1 %tobool161.not.i, label %if.else193.i, label %if.then162.i

if.then162.i:                                     ; preds = %if.end159.i
  %call163.i = call fastcc i32 @CalcMainPLL(ptr noundef %1, i32 noundef %add194.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163.i)
  %cmp164.i = icmp slt i32 %call163.i, 0
  br i1 %cmp164.i, label %if.then162.i.cleanup_crit_edge, label %if.end167.i

if.then162.i.cleanup_crit_edge:                   ; preds = %if.then162.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end167.i:                                      ; preds = %if.then162.i
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %data.i.i397.i) #8
  %143 = getelementptr inbounds i8, ptr %data.i.i397.i, i32 1
  %arrayidx.i398.i = getelementptr %struct.tda_state, ptr %1, i32 0, i32 12, i32 1
  %144 = ptrtoint ptr %data.i.i397.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 1, ptr %data.i.i397.i, align 1
  %145 = getelementptr inbounds i8, ptr %data.i.i397.i, i32 8
  %146 = call ptr @memset(ptr %145, i32 255, i32 56)
  %147 = call ptr @memcpy(ptr %143, ptr %arrayidx.i398.i, i32 7)
  %148 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %1, align 4
  %150 = ptrtoint ptr %adr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %adr.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i396.i) #8
  %152 = getelementptr inbounds i8, ptr %msg.i.i.i396.i, i32 4
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 589823, ptr %152, align 4
  %conv.i.i.i400.i = zext i8 %151 to i16
  %154 = ptrtoint ptr %msg.i.i.i396.i to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 %conv.i.i.i400.i, ptr %msg.i.i.i396.i, align 4
  %flags.i.i.i401.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i396.i, i32 0, i32 1
  %155 = ptrtoint ptr %flags.i.i.i401.i to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 0, ptr %flags.i.i.i401.i, align 2
  %buf.i.i.i402.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i396.i, i32 0, i32 3
  %156 = ptrtoint ptr %buf.i.i.i402.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %data.i.i397.i, ptr %buf.i.i.i402.i, align 4
  %call.i.i.i403.i = call i32 @i2c_transfer(ptr noundef %149, ptr noundef nonnull %msg.i.i.i396.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i403.i)
  %cmp.not.i.i.i404.i = icmp eq i32 %call.i.i.i403.i, 1
  br i1 %cmp.not.i.i.i404.i, label %if.end172.i, label %UpdateRegs.exit409.thread.i

UpdateRegs.exit409.thread.i:                      ; preds = %if.end167.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i.i.i405.i = zext i8 %151 to i32
  %call5.i.i.i406.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv4.i.i.i405.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i396.i) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data.i.i397.i) #8
  br label %cleanup

if.end172.i:                                      ; preds = %if.end167.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i396.i) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data.i.i397.i) #8
  %arrayidx174.i = getelementptr %struct.tda_state, ptr %1, i32 0, i32 12, i32 19
  %157 = ptrtoint ptr %arrayidx174.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %arrayidx174.i, align 1
  %159 = or i8 %158, 32
  store i8 %159, ptr %arrayidx174.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i411.i) #8
  %160 = getelementptr inbounds [2 x i8], ptr %msg.i.i411.i, i32 0, i32 1
  %161 = ptrtoint ptr %msg.i.i411.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 19, ptr %msg.i.i411.i, align 1
  %162 = ptrtoint ptr %160 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %159, ptr %160, align 1
  %163 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %1, align 4
  %165 = ptrtoint ptr %adr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %adr.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i410.i) #8
  %167 = getelementptr inbounds i8, ptr %msg.i.i.i410.i, i32 4
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 196607, ptr %167, align 4
  %conv.i.i.i414.i = zext i8 %166 to i16
  %169 = ptrtoint ptr %msg.i.i.i410.i to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 %conv.i.i.i414.i, ptr %msg.i.i.i410.i, align 4
  %flags.i.i.i415.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i410.i, i32 0, i32 1
  %170 = ptrtoint ptr %flags.i.i.i415.i to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 0, ptr %flags.i.i.i415.i, align 2
  %buf.i.i.i416.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i410.i, i32 0, i32 3
  %171 = ptrtoint ptr %buf.i.i.i416.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %msg.i.i411.i, ptr %buf.i.i.i416.i, align 4
  %call.i.i.i417.i = call i32 @i2c_transfer(ptr noundef %164, ptr noundef nonnull %msg.i.i.i410.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i417.i)
  %cmp.not.i.i.i418.i = icmp eq i32 %call.i.i.i417.i, 1
  br i1 %cmp.not.i.i.i418.i, label %if.end182.i, label %UpdateReg.exit423.thread.i

UpdateReg.exit423.thread.i:                       ; preds = %if.end172.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i.i.i419.i = zext i8 %166 to i32
  %call5.i.i.i420.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv4.i.i.i419.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i410.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i411.i) #8
  br label %cleanup

if.end182.i:                                      ; preds = %if.end172.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i410.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i411.i) #8
  call void @msleep(i32 noundef 1) #8
  %172 = ptrtoint ptr %arrayidx174.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %arrayidx174.i, align 1
  %174 = and i8 %173, -33
  store i8 %174, ptr %arrayidx174.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i425.i) #8
  %175 = getelementptr inbounds [2 x i8], ptr %msg.i.i425.i, i32 0, i32 1
  %176 = ptrtoint ptr %msg.i.i425.i to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 19, ptr %msg.i.i425.i, align 1
  %177 = ptrtoint ptr %175 to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %174, ptr %175, align 1
  %178 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %1, align 4
  %180 = ptrtoint ptr %adr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %adr.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i424.i) #8
  %182 = getelementptr inbounds i8, ptr %msg.i.i.i424.i, i32 4
  %183 = ptrtoint ptr %182 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 196607, ptr %182, align 4
  %conv.i.i.i428.i = zext i8 %181 to i16
  %184 = ptrtoint ptr %msg.i.i.i424.i to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 %conv.i.i.i428.i, ptr %msg.i.i.i424.i, align 4
  %flags.i.i.i429.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i424.i, i32 0, i32 1
  %185 = ptrtoint ptr %flags.i.i.i429.i to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 0, ptr %flags.i.i.i429.i, align 2
  %buf.i.i.i430.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i424.i, i32 0, i32 3
  %186 = ptrtoint ptr %buf.i.i.i430.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %msg.i.i425.i, ptr %buf.i.i.i430.i, align 4
  %call.i.i.i431.i = call i32 @i2c_transfer(ptr noundef %179, ptr noundef nonnull %msg.i.i.i424.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i431.i)
  %cmp.not.i.i.i432.i = icmp eq i32 %call.i.i.i431.i, 1
  br i1 %cmp.not.i.i.i432.i, label %UpdateReg.exit437.i, label %UpdateReg.exit437.thread.i

UpdateReg.exit437.thread.i:                       ; preds = %if.end182.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i.i.i433.i = zext i8 %181 to i32
  %call5.i.i.i434.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv4.i.i.i433.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i424.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i425.i) #8
  br label %cleanup

UpdateReg.exit437.i:                              ; preds = %if.end182.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i424.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i425.i) #8
  br label %if.end243.i

if.else193.i:                                     ; preds = %if.end159.i
  %call195.i = call fastcc i32 @CalcCalPLL(ptr noundef %1, i32 noundef %add194.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call195.i)
  %cmp196.i = icmp slt i32 %call195.i, 0
  br i1 %cmp196.i, label %if.else193.i.cleanup_crit_edge, label %if.else193.i.while.cond.i444.i_crit_edge

if.else193.i.while.cond.i444.i_crit_edge:         ; preds = %if.else193.i
  br label %while.cond.i444.i

if.else193.i.cleanup_crit_edge:                   ; preds = %if.else193.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.i444.i:                                ; preds = %while.cond.i444.i.while.cond.i444.i_crit_edge, %if.else193.i.while.cond.i444.i_crit_edge
  %i.0.i438.i = phi i32 [ %add.i443.i, %while.cond.i444.i.while.cond.i444.i_crit_edge ], [ 0, %if.else193.i.while.cond.i444.i_crit_edge ]
  %arrayidx.i439.i = getelementptr %struct.SMap2, ptr @m_Cal_PLL_Map, i32 %i.0.i438.i
  %187 = ptrtoint ptr %arrayidx.i439.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %arrayidx.i439.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %188)
  %cmp.not.i440.i = icmp ne i32 %188, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %188, i32 %add194.i)
  %cmp3.i441.i = icmp ult i32 %188, %add194.i
  %or.cond.i442.i = and i1 %cmp.not.i440.i, %cmp3.i441.i
  %add.i443.i = add nuw nsw i32 %i.0.i438.i, 1
  br i1 %or.cond.i442.i, label %while.cond.i444.i.while.cond.i444.i_crit_edge, label %while.end.i446.i

while.cond.i444.i.while.cond.i444.i_crit_edge:    ; preds = %while.cond.i444.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i444.i

while.end.i446.i:                                 ; preds = %while.cond.i444.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %188)
  %cmp6.i445.i = icmp eq i32 %188, 0
  br i1 %cmp6.i445.i, label %while.end.i446.i.SearchMap3.exit.i_crit_edge, label %if.end.i447.i

while.end.i446.i.SearchMap3.exit.i_crit_edge:     ; preds = %while.end.i446.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %SearchMap3.exit.i

if.end.i447.i:                                    ; preds = %while.end.i446.i
  call void @__sanitizer_cov_trace_pc() #10
  %m_Param1.i.i = getelementptr %struct.SMap2, ptr @m_Cal_PLL_Map, i32 %i.0.i438.i, i32 1
  %189 = ptrtoint ptr %m_Param1.i.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %m_Param1.i.i, align 4
  %phi.bo.i = and i8 %190, 119
  br label %SearchMap3.exit.i

SearchMap3.exit.i:                                ; preds = %if.end.i447.i, %while.end.i446.i.SearchMap3.exit.i_crit_edge
  %PostDiv.0.i = phi i8 [ 0, %while.end.i446.i.SearchMap3.exit.i_crit_edge ], [ %phi.bo.i, %if.end.i447.i ]
  %191 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %arrayidx83.i, align 4
  %193 = and i8 %192, -128
  %or208355.i = or i8 %193, %PostDiv.0.i
  store i8 %or208355.i, ptr %arrayidx83.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i449.i) #8
  %194 = getelementptr inbounds [2 x i8], ptr %msg.i.i449.i, i32 0, i32 1
  %195 = ptrtoint ptr %msg.i.i449.i to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 12, ptr %msg.i.i449.i, align 1
  %196 = ptrtoint ptr %194 to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 %or208355.i, ptr %194, align 1
  %197 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %1, align 4
  %199 = ptrtoint ptr %adr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %adr.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i448.i) #8
  %201 = getelementptr inbounds i8, ptr %msg.i.i.i448.i, i32 4
  %202 = ptrtoint ptr %201 to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 196607, ptr %201, align 4
  %conv.i.i.i452.i = zext i8 %200 to i16
  %203 = ptrtoint ptr %msg.i.i.i448.i to i32
  call void @__asan_store2_noabort(i32 %203)
  store i16 %conv.i.i.i452.i, ptr %msg.i.i.i448.i, align 4
  %flags.i.i.i453.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i448.i, i32 0, i32 1
  %204 = ptrtoint ptr %flags.i.i.i453.i to i32
  call void @__asan_store2_noabort(i32 %204)
  store i16 0, ptr %flags.i.i.i453.i, align 2
  %buf.i.i.i454.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i448.i, i32 0, i32 3
  %205 = ptrtoint ptr %buf.i.i.i454.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr %msg.i.i449.i, ptr %buf.i.i.i454.i, align 4
  %call.i.i.i455.i = call i32 @i2c_transfer(ptr noundef %198, ptr noundef nonnull %msg.i.i.i448.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i455.i)
  %cmp.not.i.i.i456.i = icmp eq i32 %call.i.i.i455.i, 1
  br i1 %cmp.not.i.i.i456.i, label %if.end216.i, label %UpdateReg.exit461.thread.i

UpdateReg.exit461.thread.i:                       ; preds = %SearchMap3.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i.i.i457.i = zext i8 %200 to i32
  %call5.i.i.i458.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv4.i.i.i457.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i448.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i449.i) #8
  br label %cleanup

if.end216.i:                                      ; preds = %SearchMap3.exit.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i448.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i449.i) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %data.i.i463.i) #8
  %206 = getelementptr inbounds i8, ptr %data.i.i463.i, i32 1
  %arrayidx.i464.i = getelementptr %struct.tda_state, ptr %1, i32 0, i32 12, i32 1
  %207 = ptrtoint ptr %data.i.i463.i to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 1, ptr %data.i.i463.i, align 1
  %208 = getelementptr inbounds i8, ptr %data.i.i463.i, i32 8
  %209 = call ptr @memset(ptr %208, i32 255, i32 56)
  %210 = call ptr @memcpy(ptr %206, ptr %arrayidx.i464.i, i32 7)
  %211 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %1, align 4
  %213 = ptrtoint ptr %adr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %adr.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i462.i) #8
  %215 = getelementptr inbounds i8, ptr %msg.i.i.i462.i, i32 4
  %216 = ptrtoint ptr %215 to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 589823, ptr %215, align 4
  %conv.i.i.i466.i = zext i8 %214 to i16
  %217 = ptrtoint ptr %msg.i.i.i462.i to i32
  call void @__asan_store2_noabort(i32 %217)
  store i16 %conv.i.i.i466.i, ptr %msg.i.i.i462.i, align 4
  %flags.i.i.i467.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i462.i, i32 0, i32 1
  %218 = ptrtoint ptr %flags.i.i.i467.i to i32
  call void @__asan_store2_noabort(i32 %218)
  store i16 0, ptr %flags.i.i.i467.i, align 2
  %buf.i.i.i468.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i462.i, i32 0, i32 3
  %219 = ptrtoint ptr %buf.i.i.i468.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr %data.i.i463.i, ptr %buf.i.i.i468.i, align 4
  %call.i.i.i469.i = call i32 @i2c_transfer(ptr noundef %212, ptr noundef nonnull %msg.i.i.i462.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i469.i)
  %cmp.not.i.i.i470.i = icmp eq i32 %call.i.i.i469.i, 1
  br i1 %cmp.not.i.i.i470.i, label %if.end221.i, label %UpdateRegs.exit475.thread.i

UpdateRegs.exit475.thread.i:                      ; preds = %if.end216.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i.i.i471.i = zext i8 %214 to i32
  %call5.i.i.i472.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv4.i.i.i471.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i462.i) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data.i.i463.i) #8
  br label %cleanup

if.end221.i:                                      ; preds = %if.end216.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i462.i) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data.i.i463.i) #8
  %arrayidx223.i = getelementptr %struct.tda_state, ptr %1, i32 0, i32 12, i32 22
  %220 = ptrtoint ptr %arrayidx223.i to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %arrayidx223.i, align 2
  %222 = or i8 %221, 32
  store i8 %222, ptr %arrayidx223.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i477.i) #8
  %223 = getelementptr inbounds [2 x i8], ptr %msg.i.i477.i, i32 0, i32 1
  %224 = ptrtoint ptr %msg.i.i477.i to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 22, ptr %msg.i.i477.i, align 1
  %225 = ptrtoint ptr %223 to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 %222, ptr %223, align 1
  %226 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %1, align 4
  %228 = ptrtoint ptr %adr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %adr.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i476.i) #8
  %230 = getelementptr inbounds i8, ptr %msg.i.i.i476.i, i32 4
  %231 = ptrtoint ptr %230 to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 196607, ptr %230, align 4
  %conv.i.i.i480.i = zext i8 %229 to i16
  %232 = ptrtoint ptr %msg.i.i.i476.i to i32
  call void @__asan_store2_noabort(i32 %232)
  store i16 %conv.i.i.i480.i, ptr %msg.i.i.i476.i, align 4
  %flags.i.i.i481.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i476.i, i32 0, i32 1
  %233 = ptrtoint ptr %flags.i.i.i481.i to i32
  call void @__asan_store2_noabort(i32 %233)
  store i16 0, ptr %flags.i.i.i481.i, align 2
  %buf.i.i.i482.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i476.i, i32 0, i32 3
  %234 = ptrtoint ptr %buf.i.i.i482.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store ptr %msg.i.i477.i, ptr %buf.i.i.i482.i, align 4
  %call.i.i.i483.i = call i32 @i2c_transfer(ptr noundef %227, ptr noundef nonnull %msg.i.i.i476.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i483.i)
  %cmp.not.i.i.i484.i = icmp eq i32 %call.i.i.i483.i, 1
  br i1 %cmp.not.i.i.i484.i, label %if.end231.i, label %UpdateReg.exit489.thread.i

UpdateReg.exit489.thread.i:                       ; preds = %if.end221.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i.i.i485.i = zext i8 %229 to i32
  %call5.i.i.i486.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv4.i.i.i485.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i476.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i477.i) #8
  br label %cleanup

if.end231.i:                                      ; preds = %if.end221.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i476.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i477.i) #8
  call void @msleep(i32 noundef 1) #8
  %235 = ptrtoint ptr %arrayidx223.i to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %arrayidx223.i, align 2
  %237 = and i8 %236, -33
  store i8 %237, ptr %arrayidx223.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i) #8
  %238 = getelementptr inbounds [2 x i8], ptr %msg.i.i, i32 0, i32 1
  %239 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 22, ptr %msg.i.i, align 1
  %240 = ptrtoint ptr %238 to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 %237, ptr %238, align 1
  %241 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %1, align 4
  %243 = ptrtoint ptr %adr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %adr.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i75) #8
  %245 = getelementptr inbounds i8, ptr %msg.i.i.i75, i32 4
  %246 = ptrtoint ptr %245 to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 196607, ptr %245, align 4
  %conv.i.i.i = zext i8 %244 to i16
  %247 = ptrtoint ptr %msg.i.i.i75 to i32
  call void @__asan_store2_noabort(i32 %247)
  store i16 %conv.i.i.i, ptr %msg.i.i.i75, align 4
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i75, i32 0, i32 1
  %248 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %248)
  store i16 0, ptr %flags.i.i.i, align 2
  %buf.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i75, i32 0, i32 3
  %249 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr %msg.i.i, ptr %buf.i.i.i, align 4
  %call.i.i.i = call i32 @i2c_transfer(ptr noundef %242, ptr noundef nonnull %msg.i.i.i75, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i, 1
  br i1 %cmp.not.i.i.i, label %UpdateReg.exit, label %UpdateReg.exit.thread

UpdateReg.exit.thread:                            ; preds = %if.end231.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i.i.i = zext i8 %244 to i32
  %call5.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv4.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i75) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i) #8
  br label %cleanup

UpdateReg.exit:                                   ; preds = %if.end231.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i75) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i) #8
  br label %if.end243.i

if.end243.i:                                      ; preds = %UpdateReg.exit, %UpdateReg.exit437.i
  call void @msleep(i32 noundef 20) #8
  %250 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %arrayidx18.i, align 1
  %252 = or i8 %251, 4
  store i8 %252, ptr %arrayidx18.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i491.i) #8
  %253 = getelementptr inbounds [2 x i8], ptr %msg.i.i491.i, i32 0, i32 1
  %254 = ptrtoint ptr %msg.i.i491.i to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 5, ptr %msg.i.i491.i, align 1
  %255 = ptrtoint ptr %253 to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 %252, ptr %253, align 1
  %256 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %1, align 4
  %258 = ptrtoint ptr %adr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %adr.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i490.i) #8
  %260 = getelementptr inbounds i8, ptr %msg.i.i.i490.i, i32 4
  %261 = ptrtoint ptr %260 to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 196607, ptr %260, align 4
  %conv.i.i.i494.i = zext i8 %259 to i16
  %262 = ptrtoint ptr %msg.i.i.i490.i to i32
  call void @__asan_store2_noabort(i32 %262)
  store i16 %conv.i.i.i494.i, ptr %msg.i.i.i490.i, align 4
  %flags.i.i.i495.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i490.i, i32 0, i32 1
  %263 = ptrtoint ptr %flags.i.i.i495.i to i32
  call void @__asan_store2_noabort(i32 %263)
  store i16 0, ptr %flags.i.i.i495.i, align 2
  %buf.i.i.i496.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i490.i, i32 0, i32 3
  %264 = ptrtoint ptr %buf.i.i.i496.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store ptr %msg.i.i491.i, ptr %buf.i.i.i496.i, align 4
  %call.i.i.i497.i = call i32 @i2c_transfer(ptr noundef %257, ptr noundef nonnull %msg.i.i.i490.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i497.i)
  %cmp.not.i.i.i498.i = icmp eq i32 %call.i.i.i497.i, 1
  br i1 %cmp.not.i.i.i498.i, label %if.end21, label %ChannelConfiguration.exit.thread87

ChannelConfiguration.exit.thread87:               ; preds = %if.end243.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i.i.i499.i = zext i8 %259 to i32
  %call5.i.i.i500.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv4.i.i.i499.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i490.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i491.i) #8
  br label %cleanup

if.end21:                                         ; preds = %if.end243.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i490.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i491.i) #8
  %m_SettlingTime = getelementptr inbounds %struct.tda_state, ptr %1, i32 0, i32 11
  %265 = ptrtoint ptr %m_SettlingTime to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %m_SettlingTime, align 4
  call void @msleep(i32 noundef %266) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %ChannelConfiguration.exit.thread87, %UpdateReg.exit.thread, %UpdateReg.exit489.thread.i, %UpdateRegs.exit475.thread.i, %UpdateReg.exit461.thread.i, %if.else193.i.cleanup_crit_edge, %UpdateReg.exit437.thread.i, %UpdateReg.exit423.thread.i, %UpdateRegs.exit409.thread.i, %if.then162.i.cleanup_crit_edge, %UpdateReg.exit.thread.i73, %UpdateRegs.exit.thread.i, %do.end.i, %RFTrackingFiltersCorrection.exit.thread80, %while.end.i110.i.cleanup_crit_edge, %while.body.5.i.i.cleanup_crit_edge, %while.end.i.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end21 ], [ %status.0.i.ph, %RFTrackingFiltersCorrection.exit.thread80 ], [ -1, %ChannelConfiguration.exit.thread87 ], [ -22, %while.end.i.i.cleanup_crit_edge ], [ -22, %while.body.5.i.i.cleanup_crit_edge ], [ -22, %while.end.i110.i.cleanup_crit_edge ], [ -1, %UpdateReg.exit.thread ], [ %call195.i, %if.else193.i.cleanup_crit_edge ], [ -1, %UpdateReg.exit461.thread.i ], [ -1, %UpdateRegs.exit475.thread.i ], [ -1, %UpdateReg.exit489.thread.i ], [ -1, %UpdateReg.exit437.thread.i ], [ -1, %UpdateReg.exit423.thread.i ], [ -1, %UpdateRegs.exit409.thread.i ], [ -1, %UpdateReg.exit.thread.i73 ], [ -1, %UpdateRegs.exit.thread.i ], [ %call163.i, %if.then162.i.cleanup_crit_edge ], [ -22, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_bandwidth(ptr nocapture noundef readnone %fe, ptr nocapture noundef readnone %bandwidth) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_if_frequency(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %frequency) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %IF = getelementptr inbounds %struct.tda_state, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %IF to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %IF, align 4
  %4 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %frequency, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @StandBy(ptr nocapture noundef %state) unnamed_addr #0 align 64 {
entry:
  %msg.i.i.i74 = alloca %struct.i2c_msg, align 4
  %data.i.i = alloca [64 x i8], align 1
  %msg.i.i.i60 = alloca %struct.i2c_msg, align 4
  %msg.i.i61 = alloca [2 x i8], align 1
  %msg.i.i.i46 = alloca %struct.i2c_msg, align 4
  %msg.i.i47 = alloca [2 x i8], align 1
  %msg.i.i.i = alloca %struct.i2c_msg, align 4
  %msg.i.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.tda_state, ptr %state, i32 0, i32 12, i32 27
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %2 = and i8 %1, -33
  store i8 %2, ptr %arrayidx, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i) #8
  %3 = getelementptr inbounds [2 x i8], ptr %msg.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 27, ptr %msg.i.i, align 1
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %2, ptr %3, align 1
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state, align 4
  %adr.i.i = getelementptr inbounds %struct.tda_state, ptr %state, i32 0, i32 1
  %8 = ptrtoint ptr %adr.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %adr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i) #8
  %10 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 196607, ptr %10, align 4
  %conv.i.i.i = zext i8 %9 to i16
  %12 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i.i.i, ptr %msg.i.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags.i.i.i, align 2
  %buf.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg.i.i, ptr %buf.i.i.i, align 4
  %call.i.i.i = call i32 @i2c_transfer(ptr noundef %7, ptr noundef nonnull %msg.i.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i, 1
  br i1 %cmp.not.i.i.i, label %if.end, label %UpdateReg.exit.thread

UpdateReg.exit.thread:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i.i.i = zext i8 %9 to i32
  %call5.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv4.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i) #8
  br label %do.end

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i) #8
  %arrayidx4 = getelementptr %struct.tda_state, ptr %state, i32 0, i32 12, i32 33
  %15 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx4, align 1
  %17 = and i8 %16, 124
  store i8 %17, ptr %arrayidx4, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i47) #8
  %18 = getelementptr inbounds [2 x i8], ptr %msg.i.i47, i32 0, i32 1
  %19 = ptrtoint ptr %msg.i.i47 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 33, ptr %msg.i.i47, align 1
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %17, ptr %18, align 1
  %21 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %state, align 4
  %23 = ptrtoint ptr %adr.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %adr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i46) #8
  %25 = getelementptr inbounds i8, ptr %msg.i.i.i46, i32 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 196607, ptr %25, align 4
  %conv.i.i.i50 = zext i8 %24 to i16
  %27 = ptrtoint ptr %msg.i.i.i46 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv.i.i.i50, ptr %msg.i.i.i46, align 4
  %flags.i.i.i51 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i46, i32 0, i32 1
  %28 = ptrtoint ptr %flags.i.i.i51 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %flags.i.i.i51, align 2
  %buf.i.i.i52 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i46, i32 0, i32 3
  %29 = ptrtoint ptr %buf.i.i.i52 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %msg.i.i47, ptr %buf.i.i.i52, align 4
  %call.i.i.i53 = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %msg.i.i.i46, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i53)
  %cmp.not.i.i.i54 = icmp eq i32 %call.i.i.i53, 1
  br i1 %cmp.not.i.i.i54, label %if.end12, label %UpdateReg.exit59.thread

UpdateReg.exit59.thread:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i.i.i55 = zext i8 %24 to i32
  %call5.i.i.i56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv4.i.i.i55) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i46) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i47) #8
  br label %do.end

if.end12:                                         ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i46) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i47) #8
  %arrayidx14 = getelementptr %struct.tda_state, ptr %state, i32 0, i32 12, i32 36
  %30 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx14, align 4
  %32 = or i8 %31, 3
  store i8 %32, ptr %arrayidx14, align 4
  %m_EP3_Standby = getelementptr inbounds %struct.tda_state, ptr %state, i32 0, i32 9
  %33 = ptrtoint ptr %m_EP3_Standby to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %m_EP3_Standby, align 1
  %arrayidx18 = getelementptr %struct.tda_state, ptr %state, i32 0, i32 12, i32 5
  %35 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %arrayidx18, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i61) #8
  %36 = getelementptr inbounds [2 x i8], ptr %msg.i.i61, i32 0, i32 1
  %37 = ptrtoint ptr %msg.i.i61 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 5, ptr %msg.i.i61, align 1
  %38 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %34, ptr %36, align 1
  %39 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %state, align 4
  %41 = ptrtoint ptr %adr.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %adr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i60) #8
  %43 = getelementptr inbounds i8, ptr %msg.i.i.i60, i32 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 196607, ptr %43, align 4
  %conv.i.i.i64 = zext i8 %42 to i16
  %45 = ptrtoint ptr %msg.i.i.i60 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv.i.i.i64, ptr %msg.i.i.i60, align 4
  %flags.i.i.i65 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i60, i32 0, i32 1
  %46 = ptrtoint ptr %flags.i.i.i65 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %flags.i.i.i65, align 2
  %buf.i.i.i66 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i60, i32 0, i32 3
  %47 = ptrtoint ptr %buf.i.i.i66 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %msg.i.i61, ptr %buf.i.i.i66, align 4
  %call.i.i.i67 = call i32 @i2c_transfer(ptr noundef %40, ptr noundef nonnull %msg.i.i.i60, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i67)
  %cmp.not.i.i.i68 = icmp eq i32 %call.i.i.i67, 1
  br i1 %cmp.not.i.i.i68, label %if.end23, label %UpdateReg.exit73.thread

UpdateReg.exit73.thread:                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i.i.i69 = zext i8 %42 to i32
  %call5.i.i.i70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv4.i.i.i69) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i60) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i61) #8
  br label %do.end

if.end23:                                         ; preds = %if.end12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i60) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i61) #8
  %arrayidx25 = getelementptr %struct.tda_state, ptr %state, i32 0, i32 12, i32 38
  %48 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx25, align 2
  %50 = and i8 %49, -7
  store i8 %50, ptr %arrayidx25, align 2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %data.i.i) #8
  %51 = getelementptr inbounds i8, ptr %data.i.i, i32 1
  %52 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 36, ptr %data.i.i, align 1
  %53 = getelementptr inbounds i8, ptr %data.i.i, i32 4
  %54 = call ptr @memset(ptr %53, i32 255, i32 60)
  %55 = call ptr @memcpy(ptr %51, ptr %arrayidx14, i32 3)
  %56 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %state, align 4
  %58 = ptrtoint ptr %adr.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %adr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i74) #8
  %60 = getelementptr inbounds i8, ptr %msg.i.i.i74, i32 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 327679, ptr %60, align 4
  %conv.i.i.i77 = zext i8 %59 to i16
  %62 = ptrtoint ptr %msg.i.i.i74 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv.i.i.i77, ptr %msg.i.i.i74, align 4
  %flags.i.i.i78 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i74, i32 0, i32 1
  %63 = ptrtoint ptr %flags.i.i.i78 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 0, ptr %flags.i.i.i78, align 2
  %buf.i.i.i79 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i74, i32 0, i32 3
  %64 = ptrtoint ptr %buf.i.i.i79 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %data.i.i, ptr %buf.i.i.i79, align 4
  %call.i.i.i80 = call i32 @i2c_transfer(ptr noundef %57, ptr noundef nonnull %msg.i.i.i74, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i80)
  %cmp.not.i.i.i81 = icmp eq i32 %call.i.i.i80, 1
  br i1 %cmp.not.i.i.i81, label %if.end23.UpdateRegs.exit_crit_edge, label %do.end.i.i.i84

if.end23.UpdateRegs.exit_crit_edge:               ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %UpdateRegs.exit

do.end.i.i.i84:                                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i.i.i82 = zext i8 %59 to i32
  %call5.i.i.i83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv4.i.i.i82) #12
  br label %UpdateRegs.exit

UpdateRegs.exit:                                  ; preds = %do.end.i.i.i84, %if.end23.UpdateRegs.exit_crit_edge
  %retval.0.i.i.i85 = phi i32 [ -1, %do.end.i.i.i84 ], [ 0, %if.end23.UpdateRegs.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i74) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data.i.i) #8
  br label %do.end

do.end:                                           ; preds = %UpdateRegs.exit, %UpdateReg.exit73.thread, %UpdateReg.exit59.thread, %UpdateReg.exit.thread
  %status.0 = phi i32 [ %retval.0.i.i.i85, %UpdateRegs.exit ], [ -1, %UpdateReg.exit.thread ], [ -1, %UpdateReg.exit59.thread ], [ -1, %UpdateReg.exit73.thread ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @UpdateReg(ptr nocapture noundef readonly %state, i8 noundef zeroext %Reg) unnamed_addr #0 align 64 {
entry:
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %msg.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %Reg to i32
  %arrayidx = getelementptr %struct.tda_state, ptr %state, i32 0, i32 12, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i) #8
  %2 = getelementptr inbounds [2 x i8], ptr %msg.i, i32 0, i32 1
  %3 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %Reg, ptr %msg.i, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %1, ptr %2, align 1
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %state, align 4
  %adr.i = getelementptr inbounds %struct.tda_state, ptr %state, i32 0, i32 1
  %7 = ptrtoint ptr %adr.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %adr.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #8
  %9 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 196607, ptr %9, align 4
  %conv.i.i = zext i8 %8 to i16
  %11 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %msg.i, ptr %buf.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %6, ptr noundef nonnull %msg.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i.i, label %entry.WriteReg.exit_crit_edge, label %do.end.i.i

entry.WriteReg.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %WriteReg.exit

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i.i = zext i8 %8 to i32
  %call5.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv4.i.i) #12
  br label %WriteReg.exit

WriteReg.exit:                                    ; preds = %do.end.i.i, %entry.WriteReg.exit_crit_edge
  %retval.0.i.i = phi i32 [ -1, %do.end.i.i ], [ 0, %entry.WriteReg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i) #8
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @UpdateRegs(ptr nocapture noundef readonly %state, i8 noundef zeroext %RegFrom, i8 noundef zeroext %RegTo) unnamed_addr #0 align 64 {
entry:
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %data.i = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %RegFrom to i32
  %conv = zext i8 %RegTo to i32
  %sub = sub nsw i32 %conv, %idxprom
  %0 = trunc i32 %sub to i16
  %conv2 = add nsw i16 %0, 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %data.i) #8
  %1 = getelementptr inbounds i8, ptr %data.i, i32 1
  %2 = call ptr @memset(ptr %1, i32 255, i32 63)
  %conv.i = zext i16 %conv2 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 63, i16 %conv2)
  %cmp.i = icmp ugt i16 %conv2, 63
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.5, i32 noundef %conv.i) #12
  br label %WriteRegs.exit

if.end.i:                                         ; preds = %entry
  %arrayidx = getelementptr %struct.tda_state, ptr %state, i32 0, i32 12, i32 %idxprom
  %add.i = add nsw i16 %0, 2
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %RegFrom, ptr %data.i, align 1
  %4 = call ptr @memcpy(ptr %1, ptr %arrayidx, i32 %conv.i)
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %state, align 4
  %adr.i = getelementptr inbounds %struct.tda_state, ptr %state, i32 0, i32 1
  %7 = ptrtoint ptr %adr.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %adr.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #8
  %9 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4
  %conv.i.i = zext i8 %8 to i16
  %11 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i.i, align 2
  store i16 %add.i, ptr %9, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %data.i, ptr %buf.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %6, ptr noundef nonnull %msg.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i.i, label %if.end.i.i2c_write.exit.i_crit_edge, label %do.end.i.i

if.end.i.i2c_write.exit.i_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i2c_write.exit.i

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i.i = zext i8 %8 to i32
  %call5.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv4.i.i) #12
  br label %i2c_write.exit.i

i2c_write.exit.i:                                 ; preds = %do.end.i.i, %if.end.i.i2c_write.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ -1, %do.end.i.i ], [ 0, %if.end.i.i2c_write.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #8
  br label %WriteRegs.exit

WriteRegs.exit:                                   ; preds = %i2c_write.exit.i, %do.end.i
  %retval.0.i = phi i32 [ -22, %do.end.i ], [ %retval.0.i.i, %i2c_write.exit.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data.i) #8
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ThermometerRead(ptr nocapture noundef %state, ptr nocapture noundef writeonly %pTM_Value) unnamed_addr #0 align 64 {
entry:
  %msg.i.i.i133 = alloca %struct.i2c_msg, align 4
  %msg.i.i134 = alloca [2 x i8], align 1
  %msg.i.i.i119 = alloca %struct.i2c_msg, align 4
  %msg.i.i120 = alloca [2 x i8], align 1
  %msgs.i.i111 = alloca [1 x %struct.i2c_msg], align 4
  %msg.i.i.i97 = alloca %struct.i2c_msg, align 4
  %msg.i.i98 = alloca [2 x i8], align 1
  %msgs.i.i = alloca [1 x %struct.i2c_msg], align 4
  %msg.i.i.i = alloca %struct.i2c_msg, align 4
  %msg.i.i = alloca [2 x i8], align 1
  %Regs = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Regs) #8
  %0 = getelementptr inbounds [16 x i8], ptr %Regs, i32 0, i32 1
  %arrayidx = getelementptr %struct.tda_state, ptr %state, i32 0, i32 12, i32 1
  %1 = call ptr @memset(ptr %Regs, i32 255, i32 16)
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = or i8 %3, 16
  store i8 %4, ptr %arrayidx, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i) #8
  %5 = getelementptr inbounds [2 x i8], ptr %msg.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %msg.i.i, align 1
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %4, ptr %5, align 1
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %state, align 4
  %adr.i.i = getelementptr inbounds %struct.tda_state, ptr %state, i32 0, i32 1
  %10 = ptrtoint ptr %adr.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %adr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i) #8
  %12 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 196607, ptr %12, align 4
  %conv.i.i.i = zext i8 %11 to i16
  %14 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.i.i.i, ptr %msg.i.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %flags.i.i.i, align 2
  %buf.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i.i, ptr %buf.i.i.i, align 4
  %call.i.i.i = call i32 @i2c_transfer(ptr noundef %9, ptr noundef nonnull %msg.i.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i, 1
  br i1 %cmp.not.i.i.i, label %if.end, label %UpdateReg.exit.thread

UpdateReg.exit.thread:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i.i.i = zext i8 %11 to i32
  %call5.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv4.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i) #8
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %state, align 4
  %19 = ptrtoint ptr %adr.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %adr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i.i) #8
  %21 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1114111, ptr %21, align 4
  %conv.i.i = zext i8 %20 to i16
  %23 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv.i.i, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 1, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %25 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %Regs, ptr %buf.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msgs.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.i.i.not = icmp eq i32 %call.i.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i.i) #8
  br i1 %cmp.i.i.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %0, align 1
  %28 = trunc i8 %27 to i6
  %trunc = and i6 %28, -17
  %29 = zext i6 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.11)
  switch i6 %trunc, label %if.end7.if.end44_crit_edge [
    i6 -32, label %if.end7.if.then28_crit_edge
    i6 8, label %if.end7.if.then28_crit_edge156
  ]

if.end7.if.then28_crit_edge156:                   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

if.end7.if.then28_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

if.end7.if.end44_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.then28:                                        ; preds = %if.end7.if.then28_crit_edge, %if.end7.if.then28_crit_edge156
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx, align 1
  %32 = xor i8 %31, 32
  store i8 %32, ptr %arrayidx, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i98) #8
  %33 = getelementptr inbounds [2 x i8], ptr %msg.i.i98, i32 0, i32 1
  %34 = ptrtoint ptr %msg.i.i98 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %msg.i.i98, align 1
  %35 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %32, ptr %33, align 1
  %36 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %state, align 4
  %38 = ptrtoint ptr %adr.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %adr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i97) #8
  %40 = getelementptr inbounds i8, ptr %msg.i.i.i97, i32 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 196607, ptr %40, align 4
  %conv.i.i.i101 = zext i8 %39 to i16
  %42 = ptrtoint ptr %msg.i.i.i97 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv.i.i.i101, ptr %msg.i.i.i97, align 4
  %flags.i.i.i102 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i97, i32 0, i32 1
  %43 = ptrtoint ptr %flags.i.i.i102 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 0, ptr %flags.i.i.i102, align 2
  %buf.i.i.i103 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i97, i32 0, i32 3
  %44 = ptrtoint ptr %buf.i.i.i103 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %msg.i.i98, ptr %buf.i.i.i103, align 4
  %call.i.i.i104 = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %msg.i.i.i97, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i104)
  %cmp.not.i.i.i105 = icmp eq i32 %call.i.i.i104, 1
  br i1 %cmp.not.i.i.i105, label %if.end37, label %UpdateReg.exit110.thread

UpdateReg.exit110.thread:                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i.i.i106 = zext i8 %39 to i32
  %call5.i.i.i107 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv4.i.i.i106) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i97) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i98) #8
  br label %cleanup

if.end37:                                         ; preds = %if.then28
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i97) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i98) #8
  call void @msleep(i32 noundef 10) #8
  %45 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %state, align 4
  %47 = ptrtoint ptr %adr.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %adr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i.i111) #8
  %49 = getelementptr inbounds i8, ptr %msgs.i.i111, i32 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1114111, ptr %49, align 4
  %conv.i.i113 = zext i8 %48 to i16
  %51 = ptrtoint ptr %msgs.i.i111 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv.i.i113, ptr %msgs.i.i111, align 4
  %flags.i.i114 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i111, i32 0, i32 1
  %52 = ptrtoint ptr %flags.i.i114 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 1, ptr %flags.i.i114, align 2
  %buf.i.i115 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i111, i32 0, i32 3
  %53 = ptrtoint ptr %buf.i.i115 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %Regs, ptr %buf.i.i115, align 4
  %call.i.i116 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %msgs.i.i111, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i116)
  %cmp.i.i117.not = icmp eq i32 %call.i.i116, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i.i111) #8
  br i1 %cmp.i.i117.not, label %if.end37.if.end44_crit_edge, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end37.if.end44_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.end44:                                         ; preds = %if.end37.if.end44_crit_edge, %if.end7.if.end44_crit_edge
  %54 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %0, align 1
  %conv46 = zext i8 %55 to i32
  %and47 = and i32 %conv46, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool.not = icmp eq i32 %and47, 0
  %and50 = and i32 %conv46, 15
  %arrayidx51 = getelementptr [16 x i8], ptr @m_Thermometer_Map_2, i32 0, i32 %and50
  %arrayidx56 = getelementptr [16 x i8], ptr @m_Thermometer_Map_1, i32 0, i32 %and50
  %cond.in.in = select i1 %tobool.not, ptr %arrayidx56, ptr %arrayidx51
  %56 = ptrtoint ptr %cond.in.in to i32
  call void @__asan_load1_noabort(i32 %56)
  %cond.in95 = load i8, ptr %cond.in.in, align 1
  %57 = ptrtoint ptr %pTM_Value to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %cond.in95, ptr %pTM_Value, align 1
  %58 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx, align 1
  %60 = and i8 %59, -17
  store i8 %60, ptr %arrayidx, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i120) #8
  %61 = getelementptr inbounds [2 x i8], ptr %msg.i.i120, i32 0, i32 1
  %62 = ptrtoint ptr %msg.i.i120 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %msg.i.i120, align 1
  %63 = ptrtoint ptr %61 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %60, ptr %61, align 1
  %64 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %state, align 4
  %66 = ptrtoint ptr %adr.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %adr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i119) #8
  %68 = getelementptr inbounds i8, ptr %msg.i.i.i119, i32 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 196607, ptr %68, align 4
  %conv.i.i.i123 = zext i8 %67 to i16
  %70 = ptrtoint ptr %msg.i.i.i119 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %conv.i.i.i123, ptr %msg.i.i.i119, align 4
  %flags.i.i.i124 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i119, i32 0, i32 1
  %71 = ptrtoint ptr %flags.i.i.i124 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 0, ptr %flags.i.i.i124, align 2
  %buf.i.i.i125 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i119, i32 0, i32 3
  %72 = ptrtoint ptr %buf.i.i.i125 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %msg.i.i120, ptr %buf.i.i.i125, align 4
  %call.i.i.i126 = call i32 @i2c_transfer(ptr noundef %65, ptr noundef nonnull %msg.i.i.i119, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i126)
  %cmp.not.i.i.i127 = icmp eq i32 %call.i.i.i126, 1
  br i1 %cmp.not.i.i.i127, label %if.end68, label %UpdateReg.exit132.thread

UpdateReg.exit132.thread:                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i.i.i128 = zext i8 %67 to i32
  %call5.i.i.i129 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv4.i.i.i128) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i119) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i120) #8
  br label %cleanup

if.end68:                                         ; preds = %if.end44
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i119) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i120) #8
  %arrayidx70 = getelementptr %struct.tda_state, ptr %state, i32 0, i32 12, i32 6
  %73 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx70, align 2
  %75 = and i8 %74, -4
  store i8 %75, ptr %arrayidx70, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i134) #8
  %76 = getelementptr inbounds [2 x i8], ptr %msg.i.i134, i32 0, i32 1
  %77 = ptrtoint ptr %msg.i.i134 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 6, ptr %msg.i.i134, align 1
  %78 = ptrtoint ptr %76 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %75, ptr %76, align 1
  %79 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %state, align 4
  %81 = ptrtoint ptr %adr.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %adr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i133) #8
  %83 = getelementptr inbounds i8, ptr %msg.i.i.i133, i32 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 196607, ptr %83, align 4
  %conv.i.i.i137 = zext i8 %82 to i16
  %85 = ptrtoint ptr %msg.i.i.i133 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %conv.i.i.i137, ptr %msg.i.i.i133, align 4
  %flags.i.i.i138 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i133, i32 0, i32 1
  %86 = ptrtoint ptr %flags.i.i.i138 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 0, ptr %flags.i.i.i138, align 2
  %buf.i.i.i139 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i133, i32 0, i32 3
  %87 = ptrtoint ptr %buf.i.i.i139 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %msg.i.i134, ptr %buf.i.i.i139, align 4
  %call.i.i.i140 = call i32 @i2c_transfer(ptr noundef %80, ptr noundef nonnull %msg.i.i.i133, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i140)
  %cmp.not.i.i.i141 = icmp eq i32 %call.i.i.i140, 1
  br i1 %cmp.not.i.i.i141, label %UpdateReg.exit146, label %88

UpdateReg.exit146:                                ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i133) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i134) #8
  br label %cleanup

88:                                               ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i.i.i142 = zext i8 %82 to i32
  %call5.i.i.i143 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv4.i.i.i142) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i133) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i134) #8
  br label %cleanup

cleanup:                                          ; preds = %88, %UpdateReg.exit146, %UpdateReg.exit132.thread, %if.end37.cleanup_crit_edge, %UpdateReg.exit110.thread, %if.end.cleanup_crit_edge, %UpdateReg.exit.thread
  %status.0 = phi i32 [ -1, %if.end.cleanup_crit_edge ], [ -1, %if.end37.cleanup_crit_edge ], [ -1, %UpdateReg.exit.thread ], [ -1, %UpdateReg.exit110.thread ], [ -1, %UpdateReg.exit132.thread ], [ -1, %88 ], [ 0, %UpdateReg.exit146 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Regs) #8
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @CalcMainPLL(ptr nocapture noundef %state, i32 noundef %freq) unnamed_addr #0 align 64 {
entry:
  %msg.i.i.i = alloca %struct.i2c_msg, align 4
  %data.i.i = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %entry
  %i.0.i = phi i32 [ 0, %entry ], [ %add.i, %while.cond.i.while.cond.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.SMap2, ptr @m_Main_PLL_Map, i32 %i.0.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not.i = icmp ne i32 %1, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %freq)
  %cmp3.i = icmp ult i32 %1, %freq
  %or.cond.i = and i1 %cmp.not.i, %cmp3.i
  %add.i = add nuw nsw i32 %i.0.i, 1
  br i1 %or.cond.i, label %while.cond.i.while.cond.i_crit_edge, label %while.end.i

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp6.i = icmp eq i32 %1, 0
  br i1 %cmp6.i, label %while.end.i.cleanup_crit_edge, label %if.end

while.end.i.cleanup_crit_edge:                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %while.end.i
  %m_Param1.i = getelementptr %struct.SMap2, ptr @m_Main_PLL_Map, i32 %i.0.i, i32 1
  %2 = ptrtoint ptr %m_Param1.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %m_Param1.i, align 4
  %m_Param2.i = getelementptr %struct.SMap2, ptr @m_Main_PLL_Map, i32 %i.0.i, i32 2
  %4 = ptrtoint ptr %m_Param2.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %m_Param2.i, align 1
  %conv = zext i32 %freq to i64
  %conv1 = zext i8 %5 to i64
  %mul = shl nuw nsw i64 %conv, 14
  %mul2 = mul nuw nsw i64 %mul, %conv1
  %6 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %mul2) #13, !srcloc !72
  %7 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %mul2, i64 %6, i32 0) #13, !srcloc !73
  %asmresult10.i = extractvalue { i64, i32 } %7, 0
  %8 = and i8 %3, 119
  %arrayidx = getelementptr %struct.tda_state, ptr %state, i32 0, i32 12, i32 12
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %arrayidx, align 4
  %shr192297 = lshr i64 %asmresult10.i, 38
  %10 = trunc i64 %shr192297 to i8
  %conv194 = and i8 %10, 127
  %arrayidx196 = getelementptr %struct.tda_state, ptr %state, i32 0, i32 12, i32 13
  %11 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv194, ptr %arrayidx196, align 1
  %shr197298 = lshr i64 %asmresult10.i, 30
  %conv199 = trunc i64 %shr197298 to i8
  %arrayidx201 = getelementptr %struct.tda_state, ptr %state, i32 0, i32 12, i32 14
  %12 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv199, ptr %arrayidx201, align 2
  %13 = lshr i64 %asmresult10.i, 22
  %conv203 = trunc i64 %13 to i8
  %arrayidx205 = getelementptr %struct.tda_state, ptr %state, i32 0, i32 12, i32 15
  %14 = ptrtoint ptr %arrayidx205 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv203, ptr %arrayidx205, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %data.i.i) #8
  %15 = getelementptr inbounds i8, ptr %data.i.i, i32 1
  %16 = getelementptr inbounds i8, ptr %data.i.i, i32 5
  %17 = call ptr @memset(ptr %16, i32 255, i32 59)
  %18 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 12, ptr %data.i.i, align 1
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %arrayidx, align 1
  %21 = ptrtoint ptr %15 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %20, ptr %15, align 1
  %22 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %state, align 4
  %adr.i.i = getelementptr inbounds %struct.tda_state, ptr %state, i32 0, i32 1
  %24 = ptrtoint ptr %adr.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %adr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i) #8
  %26 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 393215, ptr %26, align 4
  %conv.i.i.i = zext i8 %25 to i16
  %28 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv.i.i.i, ptr %msg.i.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %flags.i.i.i, align 2
  %buf.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 3
  %30 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %data.i.i, ptr %buf.i.i.i, align 4
  %call.i.i.i = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %msg.i.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i, 1
  br i1 %cmp.not.i.i.i, label %if.end.UpdateRegs.exit_crit_edge, label %do.end.i.i.i

if.end.UpdateRegs.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %UpdateRegs.exit

do.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i.i.i = zext i8 %25 to i32
  %call5.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv4.i.i.i) #12
  br label %UpdateRegs.exit

UpdateRegs.exit:                                  ; preds = %do.end.i.i.i, %if.end.UpdateRegs.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ -1, %do.end.i.i.i ], [ 0, %if.end.UpdateRegs.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %UpdateRegs.exit, %while.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.i.i, %UpdateRegs.exit ], [ -22, %while.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @CalcCalPLL(ptr nocapture noundef %state, i32 noundef %freq) unnamed_addr #0 align 64 {
entry:
  %msg.i.i.i = alloca %struct.i2c_msg, align 4
  %data.i.i = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %entry
  %i.0.i = phi i32 [ 0, %entry ], [ %add.i, %while.cond.i.while.cond.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.SMap2, ptr @m_Cal_PLL_Map, i32 %i.0.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not.i = icmp ne i32 %1, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %freq)
  %cmp3.i = icmp ult i32 %1, %freq
  %or.cond.i = and i1 %cmp.not.i, %cmp3.i
  %add.i = add nuw nsw i32 %i.0.i, 1
  br i1 %or.cond.i, label %while.cond.i.while.cond.i_crit_edge, label %while.end.i

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp6.i = icmp eq i32 %1, 0
  br i1 %cmp6.i, label %while.end.i.cleanup_crit_edge, label %if.end

while.end.i.cleanup_crit_edge:                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %while.end.i
  %m_Param1.i = getelementptr %struct.SMap2, ptr @m_Cal_PLL_Map, i32 %i.0.i, i32 1
  %2 = ptrtoint ptr %m_Param1.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %m_Param1.i, align 4
  %m_Param2.i = getelementptr %struct.SMap2, ptr @m_Cal_PLL_Map, i32 %i.0.i, i32 2
  %4 = ptrtoint ptr %m_Param2.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %m_Param2.i, align 1
  %conv = zext i32 %freq to i64
  %conv1 = zext i8 %5 to i64
  %mul = shl nuw nsw i64 %conv, 14
  %mul2 = mul nuw nsw i64 %mul, %conv1
  %6 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %mul2) #13, !srcloc !72
  %7 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %mul2, i64 %6, i32 0) #13, !srcloc !73
  %asmresult10.i = extractvalue { i64, i32 } %7, 0
  %arrayidx = getelementptr %struct.tda_state, ptr %state, i32 0, i32 12, i32 8
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %3, ptr %arrayidx, align 4
  %shr189294 = lshr i64 %asmresult10.i, 38
  %conv191 = trunc i64 %shr189294 to i8
  %arrayidx193 = getelementptr %struct.tda_state, ptr %state, i32 0, i32 12, i32 9
  %9 = ptrtoint ptr %arrayidx193 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv191, ptr %arrayidx193, align 1
  %shr194295 = lshr i64 %asmresult10.i, 30
  %conv196 = trunc i64 %shr194295 to i8
  %arrayidx198 = getelementptr %struct.tda_state, ptr %state, i32 0, i32 12, i32 10
  %10 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv196, ptr %arrayidx198, align 2
  %11 = lshr i64 %asmresult10.i, 22
  %conv200 = trunc i64 %11 to i8
  %arrayidx202 = getelementptr %struct.tda_state, ptr %state, i32 0, i32 12, i32 11
  %12 = ptrtoint ptr %arrayidx202 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv200, ptr %arrayidx202, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %data.i.i) #8
  %13 = getelementptr inbounds i8, ptr %data.i.i, i32 1
  %14 = getelementptr inbounds i8, ptr %data.i.i, i32 5
  %15 = call ptr @memset(ptr %14, i32 255, i32 59)
  %16 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 8, ptr %data.i.i, align 1
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %arrayidx, align 1
  %19 = ptrtoint ptr %13 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %18, ptr %13, align 1
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %state, align 4
  %adr.i.i = getelementptr inbounds %struct.tda_state, ptr %state, i32 0, i32 1
  %22 = ptrtoint ptr %adr.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %adr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i) #8
  %24 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 393215, ptr %24, align 4
  %conv.i.i.i = zext i8 %23 to i16
  %26 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv.i.i.i, ptr %msg.i.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %flags.i.i.i, align 2
  %buf.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %data.i.i, ptr %buf.i.i.i, align 4
  %call.i.i.i = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msg.i.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i, 1
  br i1 %cmp.not.i.i.i, label %if.end.UpdateRegs.exit_crit_edge, label %do.end.i.i.i

if.end.UpdateRegs.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %UpdateRegs.exit

do.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i.i.i = zext i8 %23 to i32
  %call5.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv4.i.i.i) #12
  br label %UpdateRegs.exit

UpdateRegs.exit:                                  ; preds = %do.end.i.i.i, %if.end.UpdateRegs.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ -1, %do.end.i.i.i ], [ 0, %if.end.UpdateRegs.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %UpdateRegs.exit, %while.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.i.i, %UpdateRegs.exit ], [ -22, %while.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @RFTrackingFiltersInit(ptr noundef %state, i8 noundef zeroext %RFBand) unnamed_addr #0 align 64 {
entry:
  %RF1 = alloca i32, align 4
  %RF2 = alloca i32, align 4
  %RF3 = alloca i32, align 4
  %bcal = alloca i8, align 1
  %Cprog_cal1 = alloca i32, align 4
  %Cprog_cal2 = alloca i32, align 4
  %Cprog_cal3 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %RF1) #8
  %idxprom = zext i8 %RFBand to i32
  %m_RF1_Default = getelementptr [7 x %struct.SRFBandMap], ptr @m_RF_Band_Map, i32 0, i32 %idxprom, i32 1
  %0 = ptrtoint ptr %m_RF1_Default to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %m_RF1_Default, align 4
  %2 = ptrtoint ptr %RF1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %RF1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %RF2) #8
  %m_RF2_Default = getelementptr [7 x %struct.SRFBandMap], ptr @m_RF_Band_Map, i32 0, i32 %idxprom, i32 2
  %3 = ptrtoint ptr %m_RF2_Default to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %m_RF2_Default, align 4
  %5 = ptrtoint ptr %RF2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %RF2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %RF3) #8
  %m_RF3_Default = getelementptr [7 x %struct.SRFBandMap], ptr @m_RF_Band_Map, i32 0, i32 %idxprom, i32 3
  %6 = ptrtoint ptr %m_RF3_Default to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %m_RF3_Default, align 4
  %8 = ptrtoint ptr %RF3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %RF3, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bcal) #8
  %9 = ptrtoint ptr %bcal to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %bcal, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %Cprog_cal1) #8
  %10 = ptrtoint ptr %Cprog_cal1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %Cprog_cal1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %Cprog_cal2) #8
  %11 = ptrtoint ptr %Cprog_cal2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %Cprog_cal2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %Cprog_cal3) #8
  %12 = ptrtoint ptr %Cprog_cal3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %Cprog_cal3, align 4
  %arrayidx6 = getelementptr %struct.tda_state, ptr %state, i32 0, i32 14, i32 %idxprom
  %13 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %arrayidx6, align 4
  %arrayidx8 = getelementptr %struct.tda_state, ptr %state, i32 0, i32 15, i32 %idxprom
  %14 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %arrayidx8, align 4
  %arrayidx10 = getelementptr %struct.tda_state, ptr %state, i32 0, i32 17, i32 %idxprom
  %15 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %arrayidx10, align 4
  %arrayidx12 = getelementptr %struct.tda_state, ptr %state, i32 0, i32 18, i32 %idxprom
  %16 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %arrayidx12, align 4
  %call = call fastcc i32 @PowerScan(ptr noundef %state, i8 noundef zeroext %RFBand, i32 noundef %1, ptr noundef nonnull %RF1, ptr noundef nonnull %bcal)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.do.end_crit_edge, label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end:                                           ; preds = %entry
  %17 = ptrtoint ptr %bcal to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bcal, align 1, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not = icmp eq i8 %18, 0
  br i1 %tobool.not, label %if.end.if.end18_crit_edge, label %if.then13

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then13:                                        ; preds = %if.end
  %19 = ptrtoint ptr %RF1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %RF1, align 4
  %call14 = call fastcc i32 @CalibrateRF(ptr noundef %state, i8 noundef zeroext %RFBand, i32 noundef %20, ptr noundef nonnull %Cprog_cal1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then13.do.end_crit_edge, label %if.then13.if.end18_crit_edge

if.then13.if.end18_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then13.do.end_crit_edge:                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end18:                                         ; preds = %if.then13.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %status.0 = phi i32 [ 0, %if.then13.if.end18_crit_edge ], [ %call, %if.end.if.end18_crit_edge ]
  %21 = ptrtoint ptr %RF1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %RF1, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.end18
  %i.0.i = phi i32 [ 0, %if.end18 ], [ %add.i, %while.cond.i.while.cond.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.SMapI, ptr @m_RF_Cal_Map, i32 %i.0.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.not.i = icmp ne i32 %24, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %22)
  %cmp3.i = icmp ult i32 %24, %22
  %or.cond.i = and i1 %cmp.not.i, %cmp3.i
  %add.i = add i32 %i.0.i, 1
  br i1 %or.cond.i, label %while.cond.i.while.cond.i_crit_edge, label %while.end.i

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp6.i = icmp eq i32 %24, 0
  br i1 %cmp6.i, label %while.end.i.SearchMap2.exit_crit_edge, label %if.end.i

while.end.i.SearchMap2.exit_crit_edge:            ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %SearchMap2.exit

if.end.i:                                         ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %m_Param.i = getelementptr %struct.SMapI, ptr @m_RF_Cal_Map, i32 %i.0.i, i32 1
  %25 = ptrtoint ptr %m_Param.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %m_Param.i, align 4
  br label %SearchMap2.exit

SearchMap2.exit:                                  ; preds = %if.end.i, %while.end.i.SearchMap2.exit_crit_edge
  %Cprog_table1.0 = phi i32 [ 0, %while.end.i.SearchMap2.exit_crit_edge ], [ %26, %if.end.i ]
  br i1 %tobool.not, label %if.then21, label %SearchMap2.exit.if.end22_crit_edge

SearchMap2.exit.if.end22_crit_edge:               ; preds = %SearchMap2.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then21:                                        ; preds = %SearchMap2.exit
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %Cprog_cal1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %Cprog_table1.0, ptr %Cprog_cal1, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %SearchMap2.exit.if.end22_crit_edge
  %28 = ptrtoint ptr %Cprog_cal1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %Cprog_cal1, align 4
  %sub = sub i32 %29, %Cprog_table1.0
  %30 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub, ptr %arrayidx8, align 4
  %31 = lshr i32 27, %idxprom
  %32 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp26.not = icmp eq i32 %32, 0
  br i1 %cmp26.not, label %if.end28, label %if.end22.do.end_crit_edge

if.end22.do.end_crit_edge:                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end28:                                         ; preds = %if.end22
  %call29 = call fastcc i32 @PowerScan(ptr noundef %state, i8 noundef zeroext %RFBand, i32 noundef %4, ptr noundef nonnull %RF2, ptr noundef nonnull %bcal)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.end28.do.end_crit_edge, label %if.end32

if.end28.do.end_crit_edge:                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end32:                                         ; preds = %if.end28
  %33 = ptrtoint ptr %bcal to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bcal, align 1, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool33.not = icmp eq i8 %34, 0
  br i1 %tobool33.not, label %if.end32.if.end39_crit_edge, label %if.then34

if.end32.if.end39_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then34:                                        ; preds = %if.end32
  %35 = ptrtoint ptr %RF2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %RF2, align 4
  %call35 = call fastcc i32 @CalibrateRF(ptr noundef %state, i8 noundef zeroext %RFBand, i32 noundef %36, ptr noundef nonnull %Cprog_cal2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.then34.do.end_crit_edge, label %if.then34.if.end39_crit_edge

if.then34.if.end39_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then34.do.end_crit_edge:                       ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end39:                                         ; preds = %if.then34.if.end39_crit_edge, %if.end32.if.end39_crit_edge
  %status.1 = phi i32 [ 0, %if.then34.if.end39_crit_edge ], [ %call29, %if.end32.if.end39_crit_edge ]
  %37 = ptrtoint ptr %RF2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %RF2, align 4
  br label %while.cond.i134

while.cond.i134:                                  ; preds = %while.cond.i134.while.cond.i134_crit_edge, %if.end39
  %i.0.i128 = phi i32 [ 0, %if.end39 ], [ %add.i133, %while.cond.i134.while.cond.i134_crit_edge ]
  %arrayidx.i129 = getelementptr %struct.SMapI, ptr @m_RF_Cal_Map, i32 %i.0.i128
  %39 = ptrtoint ptr %arrayidx.i129 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i129, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.not.i130 = icmp ne i32 %40, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %38)
  %cmp3.i131 = icmp ult i32 %40, %38
  %or.cond.i132 = and i1 %cmp.not.i130, %cmp3.i131
  %add.i133 = add i32 %i.0.i128, 1
  br i1 %or.cond.i132, label %while.cond.i134.while.cond.i134_crit_edge, label %while.end.i136

while.cond.i134.while.cond.i134_crit_edge:        ; preds = %while.cond.i134
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i134

while.end.i136:                                   ; preds = %while.cond.i134
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp6.i135 = icmp eq i32 %40, 0
  br i1 %cmp6.i135, label %while.end.i136.SearchMap2.exit139_crit_edge, label %if.end.i138

while.end.i136.SearchMap2.exit139_crit_edge:      ; preds = %while.end.i136
  call void @__sanitizer_cov_trace_pc() #10
  br label %SearchMap2.exit139

if.end.i138:                                      ; preds = %while.end.i136
  call void @__sanitizer_cov_trace_pc() #10
  %m_Param.i137 = getelementptr %struct.SMapI, ptr @m_RF_Cal_Map, i32 %i.0.i128, i32 1
  %41 = ptrtoint ptr %m_Param.i137 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %m_Param.i137, align 4
  br label %SearchMap2.exit139

SearchMap2.exit139:                               ; preds = %if.end.i138, %while.end.i136.SearchMap2.exit139_crit_edge
  %Cprog_table2.0 = phi i32 [ 0, %while.end.i136.SearchMap2.exit139_crit_edge ], [ %42, %if.end.i138 ]
  br i1 %tobool33.not, label %if.then42, label %SearchMap2.exit139.if.end43_crit_edge

SearchMap2.exit139.if.end43_crit_edge:            ; preds = %SearchMap2.exit139
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then42:                                        ; preds = %SearchMap2.exit139
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %Cprog_cal2 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %Cprog_table2.0, ptr %Cprog_cal2, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %SearchMap2.exit139.if.end43_crit_edge
  %44 = ptrtoint ptr %Cprog_cal2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %Cprog_cal2, align 4
  %46 = add i32 %29, %Cprog_table2.0
  %sub45 = sub i32 %Cprog_table1.0, %46
  %add = add i32 %sub45, %45
  %sub46 = sub i32 %38, %22
  %div = sdiv i32 %add, %sub46
  %47 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %div, ptr %arrayidx6, align 4
  %48 = add i8 %RFBand, -7
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %48)
  %49 = icmp ult i8 %48, -2
  br i1 %49, label %if.end43.do.end_crit_edge, label %if.end52

if.end43.do.end_crit_edge:                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end52:                                         ; preds = %if.end43
  %call53 = call fastcc i32 @PowerScan(ptr noundef %state, i8 noundef zeroext %RFBand, i32 noundef %7, ptr noundef nonnull %RF3, ptr noundef nonnull %bcal)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %if.end52.do.end_crit_edge, label %if.end56

if.end52.do.end_crit_edge:                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end56:                                         ; preds = %if.end52
  %50 = ptrtoint ptr %bcal to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %bcal, align 1, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool57.not = icmp eq i8 %51, 0
  br i1 %tobool57.not, label %if.end56.if.end63_crit_edge, label %if.then58

if.end56.if.end63_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.then58:                                        ; preds = %if.end56
  %52 = ptrtoint ptr %RF3 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %RF3, align 4
  %call59 = call fastcc i32 @CalibrateRF(ptr noundef %state, i8 noundef zeroext %RFBand, i32 noundef %53, ptr noundef nonnull %Cprog_cal3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %if.then58.do.end_crit_edge, label %if.then58.if.end63_crit_edge

if.then58.if.end63_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.then58.do.end_crit_edge:                       ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end63:                                         ; preds = %if.then58.if.end63_crit_edge, %if.end56.if.end63_crit_edge
  %status.2 = phi i32 [ %call59, %if.then58.if.end63_crit_edge ], [ %call53, %if.end56.if.end63_crit_edge ]
  %54 = ptrtoint ptr %RF3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %RF3, align 4
  br label %while.cond.i146

while.cond.i146:                                  ; preds = %while.cond.i146.while.cond.i146_crit_edge, %if.end63
  %i.0.i140 = phi i32 [ 0, %if.end63 ], [ %add.i145, %while.cond.i146.while.cond.i146_crit_edge ]
  %arrayidx.i141 = getelementptr %struct.SMapI, ptr @m_RF_Cal_Map, i32 %i.0.i140
  %56 = ptrtoint ptr %arrayidx.i141 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.i141, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp.not.i142 = icmp ne i32 %57, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %55)
  %cmp3.i143 = icmp ult i32 %57, %55
  %or.cond.i144 = and i1 %cmp.not.i142, %cmp3.i143
  %add.i145 = add i32 %i.0.i140, 1
  br i1 %or.cond.i144, label %while.cond.i146.while.cond.i146_crit_edge, label %while.end.i148

while.cond.i146.while.cond.i146_crit_edge:        ; preds = %while.cond.i146
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i146

while.end.i148:                                   ; preds = %while.cond.i146
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp6.i147 = icmp eq i32 %57, 0
  br i1 %cmp6.i147, label %while.end.i148.SearchMap2.exit151_crit_edge, label %if.end.i150

while.end.i148.SearchMap2.exit151_crit_edge:      ; preds = %while.end.i148
  call void @__sanitizer_cov_trace_pc() #10
  br label %SearchMap2.exit151

if.end.i150:                                      ; preds = %while.end.i148
  call void @__sanitizer_cov_trace_pc() #10
  %m_Param.i149 = getelementptr %struct.SMapI, ptr @m_RF_Cal_Map, i32 %i.0.i140, i32 1
  %58 = ptrtoint ptr %m_Param.i149 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %m_Param.i149, align 4
  br label %SearchMap2.exit151

SearchMap2.exit151:                               ; preds = %if.end.i150, %while.end.i148.SearchMap2.exit151_crit_edge
  %Cprog_table3.0 = phi i32 [ 0, %while.end.i148.SearchMap2.exit151_crit_edge ], [ %59, %if.end.i150 ]
  br i1 %tobool57.not, label %if.then66, label %SearchMap2.exit151.if.end67_crit_edge

SearchMap2.exit151.if.end67_crit_edge:            ; preds = %SearchMap2.exit151
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.then66:                                        ; preds = %SearchMap2.exit151
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %Cprog_cal3 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %Cprog_table3.0, ptr %Cprog_cal3, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %SearchMap2.exit151.if.end67_crit_edge
  %61 = ptrtoint ptr %Cprog_cal3 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %Cprog_cal3, align 4
  %63 = add i32 %45, %Cprog_table3.0
  %sub69 = sub i32 %Cprog_table2.0, %63
  %add70 = add i32 %sub69, %62
  %sub71 = sub i32 %55, %38
  %div72 = sdiv i32 %add70, %sub71
  %64 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %div72, ptr %arrayidx10, align 4
  %sub76 = sub i32 %45, %Cprog_table2.0
  %65 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %sub76, ptr %arrayidx12, align 4
  br label %do.end

do.end:                                           ; preds = %if.end67, %if.then58.do.end_crit_edge, %if.end52.do.end_crit_edge, %if.end43.do.end_crit_edge, %if.then34.do.end_crit_edge, %if.end28.do.end_crit_edge, %if.end22.do.end_crit_edge, %if.then13.do.end_crit_edge, %entry.do.end_crit_edge
  %status.3 = phi i32 [ %call, %entry.do.end_crit_edge ], [ %call14, %if.then13.do.end_crit_edge ], [ %status.0, %if.end22.do.end_crit_edge ], [ %call29, %if.end28.do.end_crit_edge ], [ %call35, %if.then34.do.end_crit_edge ], [ %status.1, %if.end43.do.end_crit_edge ], [ %call53, %if.end52.do.end_crit_edge ], [ %call59, %if.then58.do.end_crit_edge ], [ %status.2, %if.end67 ]
  %66 = ptrtoint ptr %RF1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %RF1, align 4
  %arrayidx81 = getelementptr %struct.tda_state, ptr %state, i32 0, i32 13, i32 %idxprom
  %68 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %arrayidx81, align 4
  %69 = ptrtoint ptr %RF2 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %RF2, align 4
  %arrayidx83 = getelementptr %struct.tda_state, ptr %state, i32 0, i32 16, i32 %idxprom
  %71 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %arrayidx83, align 4
  %72 = ptrtoint ptr %RF3 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %RF3, align 4
  %arrayidx85 = getelementptr %struct.tda_state, ptr %state, i32 0, i32 19, i32 %idxprom
  %74 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %arrayidx85, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %Cprog_cal3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %Cprog_cal2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %Cprog_cal1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bcal) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %RF3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %RF2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %RF1) #8
  ret i32 %status.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @PowerScan(ptr noundef %state, i8 noundef zeroext %RFBand, i32 noundef %RF_in, ptr nocapture noundef writeonly %pRF_Out, ptr nocapture noundef writeonly %pbcal) unnamed_addr #0 align 64 {
entry:
  %msgs.i.i230 = alloca [1 x %struct.i2c_msg], align 4
  %msg.i.i.i216 = alloca %struct.i2c_msg, align 4
  %msg.i.i217 = alloca [2 x i8], align 1
  %msgs.i.i = alloca [1 x %struct.i2c_msg], align 4
  %msg.i.i.i202 = alloca %struct.i2c_msg, align 4
  %msg.i.i203 = alloca [2 x i8], align 1
  %msg.i.i.i188 = alloca %struct.i2c_msg, align 4
  %msg.i.i189 = alloca [2 x i8], align 1
  %msg.i.i.i174 = alloca %struct.i2c_msg, align 4
  %msg.i.i175 = alloca [2 x i8], align 1
  %msg.i.i.i = alloca %struct.i2c_msg, align 4
  %msg.i.i = alloca [2 x i8], align 1
  %Regs = alloca [39 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 39, ptr nonnull %Regs) #8
  %0 = call ptr @memset(ptr %Regs, i32 255, i32 39)
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %entry
  %i.0.i = phi i32 [ 0, %entry ], [ %add.i, %while.cond.i.while.cond.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.SMapI, ptr @m_RF_Cal_Map, i32 %i.0.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not.i = icmp ne i32 %2, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %RF_in)
  %cmp3.i = icmp ult i32 %2, %RF_in
  %or.cond.i = and i1 %cmp.not.i, %cmp3.i
  %add.i = add i32 %i.0.i, 1
  br i1 %or.cond.i, label %while.cond.i.while.cond.i_crit_edge, label %while.end.i

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp6.i = icmp eq i32 %2, 0
  br i1 %cmp6.i, label %while.end.i.cleanup_crit_edge, label %land.lhs.true

while.end.i.cleanup_crit_edge:                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %while.end.i
  %m_Param.i = getelementptr %struct.SMapI, ptr @m_RF_Cal_Map, i32 %i.0.i, i32 1
  %3 = ptrtoint ptr %m_Param.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %m_Param.i, align 4
  br label %while.cond.i158

while.cond.i158:                                  ; preds = %while.cond.i158.while.cond.i158_crit_edge, %land.lhs.true
  %i.0.i152 = phi i32 [ 0, %land.lhs.true ], [ %add.i157, %while.cond.i158.while.cond.i158_crit_edge ]
  %arrayidx.i153 = getelementptr %struct.SMap, ptr @m_GainTaper_Map, i32 %i.0.i152
  %5 = ptrtoint ptr %arrayidx.i153 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i153, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not.i154 = icmp ne i32 %6, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %RF_in)
  %cmp3.i155 = icmp ult i32 %6, %RF_in
  %or.cond.i156 = and i1 %cmp.not.i154, %cmp3.i155
  %add.i157 = add nuw nsw i32 %i.0.i152, 1
  br i1 %or.cond.i156, label %while.cond.i158.while.cond.i158_crit_edge, label %while.end.i160

while.cond.i158.while.cond.i158_crit_edge:        ; preds = %while.cond.i158
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i158

while.end.i160:                                   ; preds = %while.cond.i158
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp6.i159 = icmp eq i32 %6, 0
  br i1 %cmp6.i159, label %while.end.i160.cleanup_crit_edge, label %land.lhs.true2

while.end.i160.cleanup_crit_edge:                 ; preds = %while.end.i160
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true2:                                   ; preds = %while.end.i160
  %m_Param.i161 = getelementptr %struct.SMap, ptr @m_GainTaper_Map, i32 %i.0.i152, i32 1
  %7 = ptrtoint ptr %m_Param.i161 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %m_Param.i161, align 4
  br label %while.cond.i169

while.cond.i169:                                  ; preds = %while.cond.i169.while.cond.i169_crit_edge, %land.lhs.true2
  %i.0.i163 = phi i32 [ 0, %land.lhs.true2 ], [ %add.i168, %while.cond.i169.while.cond.i169_crit_edge ]
  %arrayidx.i164 = getelementptr %struct.SMap2, ptr @m_CID_Target_Map, i32 %i.0.i163
  %9 = ptrtoint ptr %arrayidx.i164 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i164, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not.i165 = icmp ne i32 %10, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %RF_in)
  %cmp3.i166 = icmp ult i32 %10, %RF_in
  %or.cond.i167 = and i1 %cmp.not.i165, %cmp3.i166
  %add.i168 = add nuw nsw i32 %i.0.i163, 1
  br i1 %or.cond.i167, label %while.cond.i169.while.cond.i169_crit_edge, label %while.end.i171

while.cond.i169.while.cond.i169_crit_edge:        ; preds = %while.cond.i169
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i169

while.end.i171:                                   ; preds = %while.cond.i169
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp6.i170 = icmp eq i32 %10, 0
  br i1 %cmp6.i170, label %while.end.i171.cleanup_crit_edge, label %if.end

while.end.i171.cleanup_crit_edge:                 ; preds = %while.end.i171
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %while.end.i171
  %m_Param1.i = getelementptr %struct.SMap2, ptr @m_CID_Target_Map, i32 %i.0.i163, i32 1
  %11 = ptrtoint ptr %m_Param1.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %m_Param1.i, align 4
  %m_Param2.i = getelementptr %struct.SMap2, ptr @m_CID_Target_Map, i32 %i.0.i163, i32 2
  %13 = ptrtoint ptr %m_Param2.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %m_Param2.i, align 1
  %shl = shl i8 %RFBand, 5
  %or = or i8 %8, %shl
  %m_Regs = getelementptr inbounds %struct.tda_state, ptr %state, i32 0, i32 12
  %arrayidx = getelementptr %struct.tda_state, ptr %state, i32 0, i32 12, i32 4
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %or, ptr %arrayidx, align 4
  %conv8 = trunc i32 %4 to i8
  %arrayidx10 = getelementptr %struct.tda_state, ptr %state, i32 0, i32 12, i32 29
  %16 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv8, ptr %arrayidx10, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i) #8
  %17 = getelementptr inbounds [2 x i8], ptr %msg.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 4, ptr %msg.i.i, align 1
  %19 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %or, ptr %17, align 1
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %state, align 4
  %adr.i.i = getelementptr inbounds %struct.tda_state, ptr %state, i32 0, i32 1
  %22 = ptrtoint ptr %adr.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %adr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i) #8
  %24 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 196607, ptr %24, align 4
  %conv.i.i.i = zext i8 %23 to i16
  %26 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv.i.i.i, ptr %msg.i.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %flags.i.i.i, align 2
  %buf.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %msg.i.i, ptr %buf.i.i.i, align 4
  %call.i.i.i = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msg.i.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i, 1
  br i1 %cmp.not.i.i.i, label %if.end14, label %UpdateReg.exit.thread

UpdateReg.exit.thread:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i.i.i = zext i8 %23 to i32
  %call5.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv4.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i) #8
  br label %do.end113

if.end14:                                         ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i) #8
  %29 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx10, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i175) #8
  %31 = getelementptr inbounds [2 x i8], ptr %msg.i.i175, i32 0, i32 1
  %32 = ptrtoint ptr %msg.i.i175 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 29, ptr %msg.i.i175, align 1
  %33 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %30, ptr %31, align 1
  %34 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %state, align 4
  %36 = ptrtoint ptr %adr.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %adr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i174) #8
  %38 = getelementptr inbounds i8, ptr %msg.i.i.i174, i32 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 196607, ptr %38, align 4
  %conv.i.i.i178 = zext i8 %37 to i16
  %40 = ptrtoint ptr %msg.i.i.i174 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv.i.i.i178, ptr %msg.i.i.i174, align 4
  %flags.i.i.i179 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i174, i32 0, i32 1
  %41 = ptrtoint ptr %flags.i.i.i179 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 0, ptr %flags.i.i.i179, align 2
  %buf.i.i.i180 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i174, i32 0, i32 3
  %42 = ptrtoint ptr %buf.i.i.i180 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %msg.i.i175, ptr %buf.i.i.i180, align 4
  %call.i.i.i181 = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %msg.i.i.i174, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i181)
  %cmp.not.i.i.i182 = icmp eq i32 %call.i.i.i181, 1
  br i1 %cmp.not.i.i.i182, label %if.end19, label %UpdateReg.exit187.thread

UpdateReg.exit187.thread:                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i.i.i183 = zext i8 %37 to i32
  %call5.i.i.i184 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv4.i.i.i183) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i174) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i175) #8
  br label %do.end113

if.end19:                                         ; preds = %if.end14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i174) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i175) #8
  %add = add i32 %RF_in, 1000000
  %call20 = call fastcc i32 @CalcMainPLL(ptr noundef %state, i32 noundef %add)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.end19.do.end113_crit_edge, label %if.end24

if.end19.do.end113_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end113

if.end24:                                         ; preds = %if.end19
  call void @msleep(i32 noundef 5) #8
  %arrayidx26 = getelementptr %struct.tda_state, ptr %state, i32 0, i32 12, i32 6
  %43 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx26, align 2
  %45 = and i8 %44, -4
  %46 = or i8 %45, 1
  store i8 %46, ptr %arrayidx26, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i189) #8
  %47 = getelementptr inbounds [2 x i8], ptr %msg.i.i189, i32 0, i32 1
  %48 = ptrtoint ptr %msg.i.i189 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 6, ptr %msg.i.i189, align 1
  %49 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %46, ptr %47, align 1
  %50 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %state, align 4
  %52 = ptrtoint ptr %adr.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %adr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i188) #8
  %54 = getelementptr inbounds i8, ptr %msg.i.i.i188, i32 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 196607, ptr %54, align 4
  %conv.i.i.i192 = zext i8 %53 to i16
  %56 = ptrtoint ptr %msg.i.i.i188 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv.i.i.i192, ptr %msg.i.i.i188, align 4
  %flags.i.i.i193 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i188, i32 0, i32 1
  %57 = ptrtoint ptr %flags.i.i.i193 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 0, ptr %flags.i.i.i193, align 2
  %buf.i.i.i194 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i188, i32 0, i32 3
  %58 = ptrtoint ptr %buf.i.i.i194 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %msg.i.i189, ptr %buf.i.i.i194, align 4
  %call.i.i.i195 = call i32 @i2c_transfer(ptr noundef %51, ptr noundef nonnull %msg.i.i.i188, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i195)
  %cmp.not.i.i.i196 = icmp eq i32 %call.i.i.i195, 1
  br i1 %cmp.not.i.i.i196, label %if.end36, label %UpdateReg.exit201.thread

UpdateReg.exit201.thread:                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i.i.i197 = zext i8 %53 to i32
  %call5.i.i.i198 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv4.i.i.i197) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i188) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i189) #8
  br label %do.end113

if.end36:                                         ; preds = %if.end24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i188) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i189) #8
  %59 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i203) #8
  %61 = getelementptr inbounds [2 x i8], ptr %msg.i.i203, i32 0, i32 1
  %62 = ptrtoint ptr %msg.i.i203 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 4, ptr %msg.i.i203, align 1
  %63 = ptrtoint ptr %61 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %60, ptr %61, align 1
  %64 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %state, align 4
  %66 = ptrtoint ptr %adr.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %adr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i202) #8
  %68 = getelementptr inbounds i8, ptr %msg.i.i.i202, i32 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 196607, ptr %68, align 4
  %conv.i.i.i206 = zext i8 %67 to i16
  %70 = ptrtoint ptr %msg.i.i.i202 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %conv.i.i.i206, ptr %msg.i.i.i202, align 4
  %flags.i.i.i207 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i202, i32 0, i32 1
  %71 = ptrtoint ptr %flags.i.i.i207 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 0, ptr %flags.i.i.i207, align 2
  %buf.i.i.i208 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i202, i32 0, i32 3
  %72 = ptrtoint ptr %buf.i.i.i208 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %msg.i.i203, ptr %buf.i.i.i208, align 4
  %call.i.i.i209 = call i32 @i2c_transfer(ptr noundef %65, ptr noundef nonnull %msg.i.i.i202, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i209)
  %cmp.not.i.i.i210 = icmp eq i32 %call.i.i.i209, 1
  br i1 %cmp.not.i.i.i210, label %if.end41, label %UpdateReg.exit215.thread

UpdateReg.exit215.thread:                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i.i.i211 = zext i8 %67 to i32
  %call5.i.i.i212 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv4.i.i.i211) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i202) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i203) #8
  br label %do.end113

if.end41:                                         ; preds = %if.end36
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i202) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i203) #8
  %73 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %state, align 4
  %75 = ptrtoint ptr %adr.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %adr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i.i) #8
  %77 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 2621439, ptr %77, align 4
  %conv.i.i = zext i8 %76 to i16
  %79 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %conv.i.i, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %80 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 1, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %81 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %Regs, ptr %buf.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %74, ptr noundef nonnull %msgs.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.i.i.not = icmp eq i32 %call.i.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i.i) #8
  br i1 %cmp.i.i.not, label %if.end46, label %if.end41.do.end113_crit_edge

if.end41.do.end113_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end113

if.end46:                                         ; preds = %if.end41
  %arrayidx47 = getelementptr inbounds [39 x i8], ptr %Regs, i32 0, i32 25
  %82 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx47, align 1
  %84 = and i8 %83, 63
  %85 = ptrtoint ptr %Regs to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %Regs, align 1
  %87 = ptrtoint ptr %m_Regs to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %86, ptr %m_Regs, align 4
  %88 = ptrtoint ptr %pRF_Out to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %RF_in, ptr %pRF_Out, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %84, i8 %12)
  %cmp56280286 = icmp ult i8 %84, %12
  br i1 %cmp56280286, label %while.body.lr.ph.lr.ph, label %if.end46.if.end95_crit_edge

if.end46.if.end95_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95

while.body.lr.ph.lr.ph:                           ; preds = %if.end46
  %89 = getelementptr inbounds [2 x i8], ptr %msg.i.i217, i32 0, i32 1
  %90 = getelementptr inbounds i8, ptr %msg.i.i.i216, i32 4
  %flags.i.i.i221 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i216, i32 0, i32 1
  %buf.i.i.i222 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i216, i32 0, i32 3
  %91 = getelementptr inbounds i8, ptr %msgs.i.i230, i32 4
  %flags.i.i233 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i230, i32 0, i32 1
  %buf.i.i234 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i230, i32 0, i32 3
  %conv82 = zext i8 %14 to i32
  %mul83 = mul nuw nsw i32 %conv82, 100000
  br label %while.body

while.body.1:                                     ; preds = %if.end87.while.body.1_crit_edge, %if.end76.1.while.body.1_crit_edge
  %wait.0.off0282.1 = phi i32 [ 1, %if.end76.1.while.body.1_crit_edge ], [ 5, %if.end87.while.body.1_crit_edge ]
  %Count.0281.1 = phi i32 [ %add81.1, %if.end76.1.while.body.1_crit_edge ], [ 200000, %if.end87.while.body.1_crit_edge ]
  %add59.1 = sub i32 %add, %Count.0281.1
  %call60.1 = call fastcc i32 @CalcMainPLL(ptr noundef %state, i32 noundef %add59.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.1)
  %cmp61.1 = icmp slt i32 %call60.1, 0
  br i1 %cmp61.1, label %while.body.1.do.end113_crit_edge, label %if.end64.1

while.body.1.do.end113_crit_edge:                 ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end113

if.end64.1:                                       ; preds = %while.body.1
  call void @msleep(i32 noundef %wait.0.off0282.1) #8
  %92 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i217) #8
  %94 = ptrtoint ptr %msg.i.i217 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 4, ptr %msg.i.i217, align 1
  %95 = ptrtoint ptr %89 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %93, ptr %89, align 1
  %96 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %state, align 4
  %98 = ptrtoint ptr %adr.i.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %adr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i216) #8
  %100 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 196607, ptr %90, align 4
  %conv.i.i.i220.1 = zext i8 %99 to i16
  %101 = ptrtoint ptr %msg.i.i.i216 to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %conv.i.i.i220.1, ptr %msg.i.i.i216, align 4
  %102 = ptrtoint ptr %flags.i.i.i221 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 0, ptr %flags.i.i.i221, align 2
  %103 = ptrtoint ptr %buf.i.i.i222 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %msg.i.i217, ptr %buf.i.i.i222, align 4
  %call.i.i.i223.1 = call i32 @i2c_transfer(ptr noundef %97, ptr noundef nonnull %msg.i.i.i216, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i223.1)
  %cmp.not.i.i.i224.1 = icmp eq i32 %call.i.i.i223.1, 1
  br i1 %cmp.not.i.i.i224.1, label %if.end70.1, label %if.end64.1.UpdateReg.exit229.thread_crit_edge

if.end64.1.UpdateReg.exit229.thread_crit_edge:    ; preds = %if.end64.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %UpdateReg.exit229.thread

if.end70.1:                                       ; preds = %if.end64.1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i216) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i217) #8
  %104 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %state, align 4
  %106 = ptrtoint ptr %adr.i.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %adr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i.i230) #8
  %108 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 2621439, ptr %91, align 4
  %conv.i.i232.1 = zext i8 %107 to i16
  %109 = ptrtoint ptr %msgs.i.i230 to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 %conv.i.i232.1, ptr %msgs.i.i230, align 4
  %110 = ptrtoint ptr %flags.i.i233 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 1, ptr %flags.i.i233, align 2
  %111 = ptrtoint ptr %buf.i.i234 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %Regs, ptr %buf.i.i234, align 4
  %call.i.i235.1 = call i32 @i2c_transfer(ptr noundef %105, ptr noundef nonnull %msgs.i.i230, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i235.1)
  %cmp.i.i236.not.1 = icmp eq i32 %call.i.i235.1, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i.i230) #8
  br i1 %cmp.i.i236.not.1, label %if.end76.1, label %if.end70.1.do.end113_crit_edge

if.end70.1.do.end113_crit_edge:                   ; preds = %if.end70.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end113

if.end76.1:                                       ; preds = %if.end70.1
  %112 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx47, align 1
  %114 = and i8 %113, 63
  %add81.1 = add nuw nsw i32 %Count.0281.1, 200000
  call void @__sanitizer_cov_trace_cmp4(i32 %add81.1, i32 %mul83)
  %cmp84.1 = icmp ult i32 %add81.1, %mul83
  call void @__sanitizer_cov_trace_cmp1(i8 %114, i8 %12)
  %cmp56.1 = icmp ult i8 %114, %12
  %or.cond = select i1 %cmp84.1, i1 %cmp56.1, i1 false
  br i1 %or.cond, label %if.end76.1.while.body.1_crit_edge, label %if.end76.1.if.end95_crit_edge

if.end76.1.if.end95_crit_edge:                    ; preds = %if.end76.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95

if.end76.1.while.body.1_crit_edge:                ; preds = %if.end76.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.1

while.cond:                                       ; preds = %if.end76
  br i1 %cmp56, label %while.cond.while.body_crit_edge, label %while.cond.if.end95_crit_edge

while.cond.if.end95_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %while.body.lr.ph.lr.ph
  %Count.0281 = phi i32 [ 0, %while.body.lr.ph.lr.ph ], [ %add81, %while.cond.while.body_crit_edge ]
  %add59 = add i32 %add, %Count.0281
  %call60 = call fastcc i32 @CalcMainPLL(ptr noundef %state, i32 noundef %add59)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %while.body.do.end113_crit_edge, label %if.end64

while.body.do.end113_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end113

if.end64:                                         ; preds = %while.body
  call void @msleep(i32 noundef 1) #8
  %115 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i217) #8
  %117 = ptrtoint ptr %msg.i.i217 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 4, ptr %msg.i.i217, align 1
  %118 = ptrtoint ptr %89 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %116, ptr %89, align 1
  %119 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %state, align 4
  %121 = ptrtoint ptr %adr.i.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %adr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i216) #8
  %123 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 196607, ptr %90, align 4
  %conv.i.i.i220 = zext i8 %122 to i16
  %124 = ptrtoint ptr %msg.i.i.i216 to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %conv.i.i.i220, ptr %msg.i.i.i216, align 4
  %125 = ptrtoint ptr %flags.i.i.i221 to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 0, ptr %flags.i.i.i221, align 2
  %126 = ptrtoint ptr %buf.i.i.i222 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %msg.i.i217, ptr %buf.i.i.i222, align 4
  %call.i.i.i223 = call i32 @i2c_transfer(ptr noundef %120, ptr noundef nonnull %msg.i.i.i216, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i223)
  %cmp.not.i.i.i224 = icmp eq i32 %call.i.i.i223, 1
  br i1 %cmp.not.i.i.i224, label %if.end70, label %if.end64.UpdateReg.exit229.thread_crit_edge

if.end64.UpdateReg.exit229.thread_crit_edge:      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %UpdateReg.exit229.thread

UpdateReg.exit229.thread:                         ; preds = %if.end64.UpdateReg.exit229.thread_crit_edge, %if.end64.1.UpdateReg.exit229.thread_crit_edge
  %.lcssa = phi i8 [ %99, %if.end64.1.UpdateReg.exit229.thread_crit_edge ], [ %122, %if.end64.UpdateReg.exit229.thread_crit_edge ]
  %conv4.i.i.i225 = zext i8 %.lcssa to i32
  %call5.i.i.i226 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv4.i.i.i225) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i216) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i217) #8
  br label %do.end113

if.end70:                                         ; preds = %if.end64
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i216) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i217) #8
  %127 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %state, align 4
  %129 = ptrtoint ptr %adr.i.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %adr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i.i230) #8
  %131 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 2621439, ptr %91, align 4
  %conv.i.i232 = zext i8 %130 to i16
  %132 = ptrtoint ptr %msgs.i.i230 to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 %conv.i.i232, ptr %msgs.i.i230, align 4
  %133 = ptrtoint ptr %flags.i.i233 to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 1, ptr %flags.i.i233, align 2
  %134 = ptrtoint ptr %buf.i.i234 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %Regs, ptr %buf.i.i234, align 4
  %call.i.i235 = call i32 @i2c_transfer(ptr noundef %128, ptr noundef nonnull %msgs.i.i230, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i235)
  %cmp.i.i236.not = icmp eq i32 %call.i.i235, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i.i230) #8
  br i1 %cmp.i.i236.not, label %if.end76, label %if.end70.do.end113_crit_edge

if.end70.do.end113_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end113

if.end76:                                         ; preds = %if.end70
  %135 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx47, align 1
  %137 = and i8 %136, 63
  %add81 = add nuw nsw i32 %Count.0281, 200000
  call void @__sanitizer_cov_trace_cmp4(i32 %add81, i32 %mul83)
  %cmp84 = icmp ult i32 %add81, %mul83
  call void @__sanitizer_cov_trace_cmp1(i8 %137, i8 %12)
  %cmp56 = icmp ult i8 %137, %12
  br i1 %cmp84, label %while.cond, label %if.end87

if.end87:                                         ; preds = %if.end76
  br i1 %cmp56, label %if.end87.while.body.1_crit_edge, label %if.end87.if.end95_crit_edge

if.end87.if.end95_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95

if.end87.while.body.1_crit_edge:                  ; preds = %if.end87
  br label %while.body.1

if.end95:                                         ; preds = %if.end87.if.end95_crit_edge, %while.cond.if.end95_crit_edge, %if.end76.1.if.end95_crit_edge, %if.end46.if.end95_crit_edge
  %freq_MainPLL.1 = phi i32 [ %add, %if.end46.if.end95_crit_edge ], [ %add59, %if.end87.if.end95_crit_edge ], [ %add59.1, %if.end76.1.if.end95_crit_edge ], [ %add59, %while.cond.if.end95_crit_edge ]
  %CID_Gain.1 = phi i8 [ %84, %if.end46.if.end95_crit_edge ], [ %137, %if.end87.if.end95_crit_edge ], [ %114, %if.end76.1.if.end95_crit_edge ], [ %137, %while.cond.if.end95_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %CID_Gain.1, i8 %12)
  %cmp98.not = icmp ult i8 %CID_Gain.1, %12
  br i1 %cmp98.not, label %if.else, label %if.then100

if.then100:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  %138 = ptrtoint ptr %pbcal to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 1, ptr %pbcal, align 1
  %sub101 = add i32 %freq_MainPLL.1, -1000000
  %139 = ptrtoint ptr %pRF_Out to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %sub101, ptr %pRF_Out, align 4
  br label %do.end113

if.else:                                          ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  %140 = ptrtoint ptr %pbcal to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 0, ptr %pbcal, align 1
  br label %do.end113

cleanup:                                          ; preds = %while.end.i171.cleanup_crit_edge, %while.end.i160.cleanup_crit_edge, %while.end.i.cleanup_crit_edge
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #12
  call void @llvm.lifetime.end.p0(i64 39, ptr nonnull %Regs) #8
  br label %cleanup114

do.end113:                                        ; preds = %if.else, %if.then100, %if.end70.do.end113_crit_edge, %UpdateReg.exit229.thread, %while.body.do.end113_crit_edge, %if.end70.1.do.end113_crit_edge, %while.body.1.do.end113_crit_edge, %if.end41.do.end113_crit_edge, %UpdateReg.exit215.thread, %UpdateReg.exit201.thread, %if.end19.do.end113_crit_edge, %UpdateReg.exit187.thread, %UpdateReg.exit.thread
  %status.2.ph = phi i32 [ -1, %UpdateReg.exit215.thread ], [ -1, %UpdateReg.exit201.thread ], [ -1, %UpdateReg.exit187.thread ], [ -1, %UpdateReg.exit.thread ], [ 0, %if.then100 ], [ 0, %if.else ], [ -1, %if.end41.do.end113_crit_edge ], [ %call20, %if.end19.do.end113_crit_edge ], [ -1, %UpdateReg.exit229.thread ], [ %call60.1, %while.body.1.do.end113_crit_edge ], [ -1, %if.end70.1.do.end113_crit_edge ], [ -1, %if.end70.do.end113_crit_edge ], [ %call60, %while.body.do.end113_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 39, ptr nonnull %Regs) #8
  br label %cleanup114

cleanup114:                                       ; preds = %do.end113, %cleanup
  %retval.1 = phi i32 [ -22, %cleanup ], [ %status.2.ph, %do.end113 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @CalibrateRF(ptr noundef %state, i8 noundef zeroext %RFBand, i32 noundef %freq, ptr nocapture noundef writeonly %pCprog) unnamed_addr #0 align 64 {
entry:
  %msg.i.i.i337 = alloca %struct.i2c_msg, align 4
  %msg.i.i338 = alloca [2 x i8], align 1
  %msg.i.i.i325 = alloca %struct.i2c_msg, align 4
  %data.i.i = alloca [64 x i8], align 1
  %msg.i.i.i288 = alloca %struct.i2c_msg, align 4
  %msg.i.i289 = alloca [2 x i8], align 1
  %msg.i.i.i = alloca %struct.i2c_msg, align 4
  %msg.i.i = alloca [2 x i8], align 1
  %Regs = alloca [39 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 39, ptr nonnull %Regs) #8
  %0 = call ptr @memset(ptr %Regs, i32 255, i32 39)
  %m_Regs = getelementptr inbounds %struct.tda_state, ptr %state, i32 0, i32 12
  %arrayidx = getelementptr %struct.tda_state, ptr %state, i32 0, i32 12, i32 6
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 2
  %3 = and i8 %2, -4
  store i8 %3, ptr %arrayidx, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i) #8
  %4 = getelementptr inbounds [2 x i8], ptr %msg.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 6, ptr %msg.i.i, align 1
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %3, ptr %4, align 1
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %state, align 4
  %adr.i.i = getelementptr inbounds %struct.tda_state, ptr %state, i32 0, i32 1
  %9 = ptrtoint ptr %adr.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %adr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i) #8
  %11 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 196607, ptr %11, align 4
  %conv.i.i.i = zext i8 %10 to i16
  %13 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv.i.i.i, ptr %msg.i.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %flags.i.i.i, align 2
  %buf.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg.i.i, ptr %buf.i.i.i, align 4
  %call.i.i.i = call i32 @i2c_transfer(ptr noundef %8, ptr noundef nonnull %msg.i.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i, 1
  br i1 %cmp.not.i.i.i, label %if.end, label %UpdateReg.exit.thread

UpdateReg.exit.thread:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i.i.i = zext i8 %10 to i32
  %call5.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv4.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i) #8
  br label %cleanup218

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i) #8
  %arrayidx4 = getelementptr %struct.tda_state, ptr %state, i32 0, i32 12, i32 33
  %16 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx4, align 1
  %18 = or i8 %17, 3
  store i8 %18, ptr %arrayidx4, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i289) #8
  %19 = getelementptr inbounds [2 x i8], ptr %msg.i.i289, i32 0, i32 1
  %20 = ptrtoint ptr %msg.i.i289 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 33, ptr %msg.i.i289, align 1
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %18, ptr %19, align 1
  %22 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %state, align 4
  %24 = ptrtoint ptr %adr.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %adr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i288) #8
  %26 = getelementptr inbounds i8, ptr %msg.i.i.i288, i32 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 196607, ptr %26, align 4
  %conv.i.i.i292 = zext i8 %25 to i16
  %28 = ptrtoint ptr %msg.i.i.i288 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv.i.i.i292, ptr %msg.i.i.i288, align 4
  %flags.i.i.i293 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i288, i32 0, i32 1
  %29 = ptrtoint ptr %flags.i.i.i293 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %flags.i.i.i293, align 2
  %buf.i.i.i294 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i288, i32 0, i32 3
  %30 = ptrtoint ptr %buf.i.i.i294 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %msg.i.i289, ptr %buf.i.i.i294, align 4
  %call.i.i.i295 = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %msg.i.i.i288, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i295)
  %cmp.not.i.i.i296 = icmp eq i32 %call.i.i.i295, 1
  br i1 %cmp.not.i.i.i296, label %if.end11, label %UpdateReg.exit301.thread

UpdateReg.exit301.thread:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i.i.i297 = zext i8 %25 to i32
  %call5.i.i.i298 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv4.i.i.i297) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i288) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i289) #8
  br label %cleanup218

if.end11:                                         ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i288) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i289) #8
  %31 = ptrtoint ptr %m_Regs to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %m_Regs, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -125, i8 %32)
  %cmp15.not = icmp eq i8 %32, -125
  br i1 %cmp15.not, label %if.end11.while.cond.i_crit_edge, label %if.then17

if.end11.while.cond.i_crit_edge:                  ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

if.then17:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx19 = getelementptr %struct.tda_state, ptr %state, i32 0, i32 12, i32 5
  %33 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx19, align 1
  %35 = or i8 %34, 64
  store i8 %35, ptr %arrayidx19, align 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.then17, %if.end11.while.cond.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 62000000, i32 %freq)
  %cmp3.i = icmp ugt i32 %freq, 62000000
  br i1 %cmp3.i, label %while.cond.i.1, label %while.cond.i.while.end.i_crit_edge

while.cond.i.while.end.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.cond.i.1:                                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 84000000, i32 %freq)
  %cmp3.i.1 = icmp ugt i32 %freq, 84000000
  br i1 %cmp3.i.1, label %while.cond.i.2, label %while.cond.i.1.while.end.i_crit_edge

while.cond.i.1.while.end.i_crit_edge:             ; preds = %while.cond.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.cond.i.2:                                   ; preds = %while.cond.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000000, i32 %freq)
  %cmp3.i.2 = icmp ugt i32 %freq, 100000000
  br i1 %cmp3.i.2, label %while.cond.i.3, label %while.cond.i.2.while.end.i_crit_edge

while.cond.i.2.while.end.i_crit_edge:             ; preds = %while.cond.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.cond.i.3:                                   ; preds = %while.cond.i.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 140000000, i32 %freq)
  %cmp3.i.3 = icmp ugt i32 %freq, 140000000
  br i1 %cmp3.i.3, label %while.cond.i.4, label %while.cond.i.3.while.end.i_crit_edge

while.cond.i.3.while.end.i_crit_edge:             ; preds = %while.cond.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.cond.i.4:                                   ; preds = %while.cond.i.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 170000000, i32 %freq)
  %cmp3.i.4 = icmp ugt i32 %freq, 170000000
  br i1 %cmp3.i.4, label %while.cond.i.5, label %while.cond.i.4.while.end.i_crit_edge

while.cond.i.4.while.end.i_crit_edge:             ; preds = %while.cond.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.cond.i.5:                                   ; preds = %while.cond.i.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 180000000, i32 %freq)
  %cmp3.i.5 = icmp ugt i32 %freq, 180000000
  br i1 %cmp3.i.5, label %while.cond.i.6, label %while.cond.i.5.while.end.i_crit_edge

while.cond.i.5.while.end.i_crit_edge:             ; preds = %while.cond.i.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.cond.i.6:                                   ; preds = %while.cond.i.5
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 865000000, i32 %freq)
  %cmp3.i.6 = icmp ugt i32 %freq, 865000000
  %spec.select = select i1 %cmp3.i.6, i32 7, i32 6
  %spec.select380 = select i1 %cmp3.i.6, i1 true, i1 false
  br label %while.end.i

while.end.i:                                      ; preds = %while.cond.i.6, %while.cond.i.5.while.end.i_crit_edge, %while.cond.i.4.while.end.i_crit_edge, %while.cond.i.3.while.end.i_crit_edge, %while.cond.i.2.while.end.i_crit_edge, %while.cond.i.1.while.end.i_crit_edge, %while.cond.i.while.end.i_crit_edge
  %i.0.i.lcssa = phi i32 [ 0, %while.cond.i.while.end.i_crit_edge ], [ 1, %while.cond.i.1.while.end.i_crit_edge ], [ 2, %while.cond.i.2.while.end.i_crit_edge ], [ 3, %while.cond.i.3.while.end.i_crit_edge ], [ 4, %while.cond.i.4.while.end.i_crit_edge ], [ 5, %while.cond.i.5.while.end.i_crit_edge ], [ %spec.select, %while.cond.i.6 ]
  %cmp6.i = phi i1 [ false, %while.cond.i.while.end.i_crit_edge ], [ false, %while.cond.i.1.while.end.i_crit_edge ], [ false, %while.cond.i.2.while.end.i_crit_edge ], [ false, %while.cond.i.3.while.end.i_crit_edge ], [ false, %while.cond.i.4.while.end.i_crit_edge ], [ false, %while.cond.i.5.while.end.i_crit_edge ], [ %spec.select380, %while.cond.i.6 ]
  br i1 %cmp6.i, label %while.end.i.cleanup218_crit_edge, label %land.lhs.true

while.end.i.cleanup218_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup218

land.lhs.true:                                    ; preds = %while.end.i
  %m_Param.i = getelementptr %struct.SMap, ptr @m_BP_Filter_Map, i32 %i.0.i.lcssa, i32 1
  %36 = ptrtoint ptr %m_Param.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %m_Param.i, align 4
  br label %while.cond.i309

while.cond.i309:                                  ; preds = %while.cond.i309.while.cond.i309_crit_edge, %land.lhs.true
  %i.0.i303 = phi i32 [ 0, %land.lhs.true ], [ %add.i308, %while.cond.i309.while.cond.i309_crit_edge ]
  %arrayidx.i304 = getelementptr %struct.SMap, ptr @m_GainTaper_Map, i32 %i.0.i303
  %38 = ptrtoint ptr %arrayidx.i304 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i304, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.not.i305 = icmp ne i32 %39, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %freq)
  %cmp3.i306 = icmp ult i32 %39, %freq
  %or.cond.i307 = and i1 %cmp.not.i305, %cmp3.i306
  %add.i308 = add nuw nsw i32 %i.0.i303, 1
  br i1 %or.cond.i307, label %while.cond.i309.while.cond.i309_crit_edge, label %while.end.i311

while.cond.i309.while.cond.i309_crit_edge:        ; preds = %while.cond.i309
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i309

while.end.i311:                                   ; preds = %while.cond.i309
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp6.i310 = icmp eq i32 %39, 0
  br i1 %cmp6.i310, label %while.end.i311.cleanup218_crit_edge, label %land.lhs.true28

while.end.i311.cleanup218_crit_edge:              ; preds = %while.end.i311
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup218

land.lhs.true28:                                  ; preds = %while.end.i311
  %m_Param.i312 = getelementptr %struct.SMap, ptr @m_GainTaper_Map, i32 %i.0.i303, i32 1
  %40 = ptrtoint ptr %m_Param.i312 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %m_Param.i312, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 47900000, i32 %freq)
  %cmp3.i318 = icmp ugt i32 %freq, 47900000
  br i1 %cmp3.i318, label %while.cond.i321.1, label %land.lhs.true28.while.end.i323_crit_edge

land.lhs.true28.while.end.i323_crit_edge:         ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i323

while.cond.i321.1:                                ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_const_cmp4(i32 61100000, i32 %freq)
  %cmp3.i318.1 = icmp ugt i32 %freq, 61100000
  br i1 %cmp3.i318.1, label %while.cond.i321.2, label %while.cond.i321.1.while.end.i323_crit_edge

while.cond.i321.1.while.end.i323_crit_edge:       ; preds = %while.cond.i321.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i323

while.cond.i321.2:                                ; preds = %while.cond.i321.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 350000000, i32 %freq)
  %cmp3.i318.2 = icmp ugt i32 %freq, 350000000
  br i1 %cmp3.i318.2, label %while.cond.i321.3, label %while.cond.i321.2.while.end.i323_crit_edge

while.cond.i321.2.while.end.i323_crit_edge:       ; preds = %while.cond.i321.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i323

while.cond.i321.3:                                ; preds = %while.cond.i321.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 720000000, i32 %freq)
  %cmp3.i318.3 = icmp ugt i32 %freq, 720000000
  br i1 %cmp3.i318.3, label %while.cond.i321.4, label %while.cond.i321.3.while.end.i323_crit_edge

while.cond.i321.3.while.end.i323_crit_edge:       ; preds = %while.cond.i321.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i323

while.cond.i321.4:                                ; preds = %while.cond.i321.3
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 865000000, i32 %freq)
  %cmp3.i318.4 = icmp ugt i32 %freq, 865000000
  %spec.select381 = select i1 %cmp3.i318.4, i32 5, i32 4
  %spec.select382 = select i1 %cmp3.i318.4, i1 true, i1 false
  br label %while.end.i323

while.end.i323:                                   ; preds = %while.cond.i321.4, %while.cond.i321.3.while.end.i323_crit_edge, %while.cond.i321.2.while.end.i323_crit_edge, %while.cond.i321.1.while.end.i323_crit_edge, %land.lhs.true28.while.end.i323_crit_edge
  %i.0.i315.lcssa = phi i32 [ 0, %land.lhs.true28.while.end.i323_crit_edge ], [ 1, %while.cond.i321.1.while.end.i323_crit_edge ], [ 2, %while.cond.i321.2.while.end.i323_crit_edge ], [ 3, %while.cond.i321.3.while.end.i323_crit_edge ], [ %spec.select381, %while.cond.i321.4 ]
  %cmp6.i322 = phi i1 [ false, %land.lhs.true28.while.end.i323_crit_edge ], [ false, %while.cond.i321.1.while.end.i323_crit_edge ], [ false, %while.cond.i321.2.while.end.i323_crit_edge ], [ false, %while.cond.i321.3.while.end.i323_crit_edge ], [ %spec.select382, %while.cond.i321.4 ]
  br i1 %cmp6.i322, label %while.end.i323.cleanup218_crit_edge, label %if.end32

while.end.i323.cleanup218_crit_edge:              ; preds = %while.end.i323
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup218

if.end32:                                         ; preds = %while.end.i323
  %m_Param1.i = getelementptr %struct.SMap2, ptr @m_KM_Map, i32 %i.0.i315.lcssa, i32 1
  %42 = ptrtoint ptr %m_Param1.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %m_Param1.i, align 4
  %m_Param2.i = getelementptr %struct.SMap2, ptr @m_KM_Map, i32 %i.0.i315.lcssa, i32 2
  %44 = ptrtoint ptr %m_Param2.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %m_Param2.i, align 1
  %arrayidx34 = getelementptr %struct.tda_state, ptr %state, i32 0, i32 12, i32 3
  %46 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx34, align 1
  %48 = and i8 %47, -8
  %or38287 = or i8 %48, %37
  store i8 %or38287, ptr %arrayidx34, align 1
  %shl = shl i8 %RFBand, 5
  %or44 = or i8 %41, %shl
  %arrayidx47 = getelementptr %struct.tda_state, ptr %state, i32 0, i32 12, i32 4
  %49 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %or44, ptr %arrayidx47, align 4
  %arrayidx49 = getelementptr %struct.tda_state, ptr %state, i32 0, i32 12, i32 28
  %50 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx49, align 4
  %52 = and i8 %51, -125
  %shl53 = shl i8 %43, 4
  %shl56 = shl i8 %45, 2
  %or54 = or i8 %shl56, %shl53
  %or57 = or i8 %or54, %52
  store i8 %or57, ptr %arrayidx49, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %data.i.i) #8
  %53 = getelementptr inbounds i8, ptr %data.i.i, i32 1
  %54 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 3, ptr %data.i.i, align 1
  %55 = getelementptr inbounds i8, ptr %data.i.i, i32 4
  %56 = call ptr @memset(ptr %55, i32 255, i32 60)
  %57 = call ptr @memcpy(ptr %53, ptr %arrayidx34, i32 3)
  %58 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %state, align 4
  %60 = ptrtoint ptr %adr.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %adr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i325) #8
  %62 = getelementptr inbounds i8, ptr %msg.i.i.i325, i32 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 327679, ptr %62, align 4
  %conv.i.i.i328 = zext i8 %61 to i16
  %64 = ptrtoint ptr %msg.i.i.i325 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv.i.i.i328, ptr %msg.i.i.i325, align 4
  %flags.i.i.i329 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i325, i32 0, i32 1
  %65 = ptrtoint ptr %flags.i.i.i329 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 0, ptr %flags.i.i.i329, align 2
  %buf.i.i.i330 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i325, i32 0, i32 3
  %66 = ptrtoint ptr %buf.i.i.i330 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %data.i.i, ptr %buf.i.i.i330, align 4
  %call.i.i.i331 = call i32 @i2c_transfer(ptr noundef %59, ptr noundef nonnull %msg.i.i.i325, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i331)
  %cmp.not.i.i.i332 = icmp eq i32 %call.i.i.i331, 1
  br i1 %cmp.not.i.i.i332, label %if.end65, label %UpdateRegs.exit.thread

UpdateRegs.exit.thread:                           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i.i.i333 = zext i8 %61 to i32
  %call5.i.i.i334 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv4.i.i.i333) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i325) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data.i.i) #8
  br label %cleanup218

if.end65:                                         ; preds = %if.end32
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i325) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data.i.i) #8
  %67 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx49, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i338) #8
  %69 = getelementptr inbounds [2 x i8], ptr %msg.i.i338, i32 0, i32 1
  %70 = ptrtoint ptr %msg.i.i338 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 28, ptr %msg.i.i338, align 1
  %71 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %68, ptr %69, align 1
  %72 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %state, align 4
  %74 = ptrtoint ptr %adr.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %adr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i337) #8
  %76 = getelementptr inbounds i8, ptr %msg.i.i.i337, i32 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 196607, ptr %76, align 4
  %conv.i.i.i341 = zext i8 %75 to i16
  %78 = ptrtoint ptr %msg.i.i.i337 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %conv.i.i.i341, ptr %msg.i.i.i337, align 4
  %flags.i.i.i342 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i337, i32 0, i32 1
  %79 = ptrtoint ptr %flags.i.i.i342 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 0, ptr %flags.i.i.i342, align 2
  %buf.i.i.i343 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i337, i32 0, i32 3
  %80 = ptrtoint ptr %buf.i.i.i343 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %msg.i.i338, ptr %buf.i.i.i343, align 4
  %call.i.i.i344 = call i32 @i2c_transfer(ptr noundef %73, ptr noundef nonnull %msg.i.i.i337, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i344)
  %cmp.not.i.i.i345 = icmp eq i32 %call.i.i.i344, 1
  br i1 %cmp.not.i.i.i345, label %if.end70, label %UpdateReg.exit350.thread

UpdateReg.exit350.thread:                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i.i.i346 = zext i8 %75 to i32
  %call5.i.i.i347 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv4.i.i.i346) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i337) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i338) #8
  br label %cleanup218

if.end70:                                         ; preds = %if.end65
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i337) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i338) #8
  %arrayidx72 = getelementptr %struct.tda_state, ptr %state, i32 0, i32 12, i32 19
  %81 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx72, align 1
  %83 = or i8 %82, 32
  store i8 %83, ptr %arrayidx72, align 1
  %call76 = call fastcc i32 @UpdateReg(ptr noundef %state, i8 noundef zeroext 19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %cmp77 = icmp slt i32 %call76, 0
  br i1 %cmp77, label %if.end70.cleanup218_crit_edge, label %if.end80

if.end70.cleanup218_crit_edge:                    ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup218

if.end80:                                         ; preds = %if.end70
  %arrayidx82 = getelementptr %struct.tda_state, ptr %state, i32 0, i32 12, i32 22
  %84 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx82, align 2
  %86 = or i8 %85, 32
  store i8 %86, ptr %arrayidx82, align 2
  %call86 = call fastcc i32 @UpdateReg(ptr noundef %state, i8 noundef zeroext 22)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %cmp87 = icmp slt i32 %call86, 0
  br i1 %cmp87, label %if.end80.cleanup218_crit_edge, label %if.end90

if.end80.cleanup218_crit_edge:                    ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup218

if.end90:                                         ; preds = %if.end80
  %arrayidx92 = getelementptr %struct.tda_state, ptr %state, i32 0, i32 12, i32 29
  %87 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %arrayidx92, align 1
  %call93 = call fastcc i32 @UpdateReg(ptr noundef %state, i8 noundef zeroext 29)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %cmp94 = icmp slt i32 %call93, 0
  br i1 %cmp94, label %if.end90.cleanup218_crit_edge, label %if.end97

if.end90.cleanup218_crit_edge:                    ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup218

if.end97:                                         ; preds = %if.end90
  %arrayidx99 = getelementptr %struct.tda_state, ptr %state, i32 0, i32 12, i32 35
  %88 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx99, align 1
  %90 = and i8 %89, -33
  store i8 %90, ptr %arrayidx99, align 1
  %call103 = call fastcc i32 @UpdateReg(ptr noundef %state, i8 noundef zeroext 35)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %cmp104 = icmp slt i32 %call103, 0
  br i1 %cmp104, label %if.end97.cleanup218_crit_edge, label %if.end107

if.end97.cleanup218_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup218

if.end107:                                        ; preds = %if.end97
  %91 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx, align 2
  %93 = or i8 %92, 3
  store i8 %93, ptr %arrayidx, align 2
  %call113 = call fastcc i32 @UpdateRegs(ptr noundef %state, i8 noundef zeroext 6, i8 noundef zeroext 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %cmp114 = icmp slt i32 %call113, 0
  br i1 %cmp114, label %if.end107.cleanup218_crit_edge, label %if.end117

if.end107.cleanup218_crit_edge:                   ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup218

if.end117:                                        ; preds = %if.end107
  %call118 = call fastcc i32 @CalcCalPLL(ptr noundef %state, i32 noundef %freq)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %cmp119 = icmp slt i32 %call118, 0
  br i1 %cmp119, label %if.end117.cleanup218_crit_edge, label %if.end122

if.end117.cleanup218_crit_edge:                   ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup218

if.end122:                                        ; preds = %if.end117
  %add = add i32 %freq, 1000000
  %call123 = call fastcc i32 @CalcMainPLL(ptr noundef %state, i32 noundef %add)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %cmp124 = icmp slt i32 %call123, 0
  br i1 %cmp124, label %if.end122.cleanup218_crit_edge, label %if.end127

if.end122.cleanup218_crit_edge:                   ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup218

if.end127:                                        ; preds = %if.end122
  call void @msleep(i32 noundef 5) #8
  %call128 = call fastcc i32 @UpdateReg(ptr noundef %state, i8 noundef zeroext 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %cmp129 = icmp slt i32 %call128, 0
  br i1 %cmp129, label %if.end127.cleanup218_crit_edge, label %if.end132

if.end127.cleanup218_crit_edge:                   ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup218

if.end132:                                        ; preds = %if.end127
  %call133 = call fastcc i32 @UpdateReg(ptr noundef %state, i8 noundef zeroext 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %cmp134 = icmp slt i32 %call133, 0
  br i1 %cmp134, label %if.end132.cleanup218_crit_edge, label %if.end137

if.end132.cleanup218_crit_edge:                   ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup218

if.end137:                                        ; preds = %if.end132
  %call138 = call fastcc i32 @UpdateReg(ptr noundef %state, i8 noundef zeroext 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %cmp139 = icmp slt i32 %call138, 0
  br i1 %cmp139, label %if.end137.cleanup218_crit_edge, label %if.end142

if.end137.cleanup218_crit_edge:                   ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup218

if.end142:                                        ; preds = %if.end137
  %call143 = call fastcc i32 @UpdateReg(ptr noundef %state, i8 noundef zeroext 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %cmp144 = icmp slt i32 %call143, 0
  br i1 %cmp144, label %if.end142.cleanup218_crit_edge, label %if.end147

if.end142.cleanup218_crit_edge:                   ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup218

if.end147:                                        ; preds = %if.end142
  %94 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx72, align 1
  %96 = and i8 %95, -33
  store i8 %96, ptr %arrayidx72, align 1
  %call153 = call fastcc i32 @UpdateReg(ptr noundef %state, i8 noundef zeroext 19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153)
  %cmp154 = icmp slt i32 %call153, 0
  br i1 %cmp154, label %if.end147.cleanup218_crit_edge, label %if.end157

if.end147.cleanup218_crit_edge:                   ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup218

if.end157:                                        ; preds = %if.end147
  %97 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx82, align 2
  %99 = and i8 %98, -33
  store i8 %99, ptr %arrayidx82, align 2
  %call163 = call fastcc i32 @UpdateReg(ptr noundef %state, i8 noundef zeroext 22)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %cmp164 = icmp slt i32 %call163, 0
  br i1 %cmp164, label %if.end157.cleanup218_crit_edge, label %if.end167

if.end157.cleanup218_crit_edge:                   ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup218

if.end167:                                        ; preds = %if.end157
  call void @msleep(i32 noundef 10) #8
  %100 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx99, align 1
  %102 = or i8 %101, 32
  store i8 %102, ptr %arrayidx99, align 1
  %call173 = call fastcc i32 @UpdateReg(ptr noundef %state, i8 noundef zeroext 35)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call173)
  %cmp174 = icmp slt i32 %call173, 0
  br i1 %cmp174, label %if.end167.cleanup218_crit_edge, label %if.end177

if.end167.cleanup218_crit_edge:                   ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup218

if.end177:                                        ; preds = %if.end167
  call void @msleep(i32 noundef 60) #8
  %103 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx, align 2
  %105 = and i8 %104, -4
  store i8 %105, ptr %arrayidx, align 2
  %arrayidx184 = getelementptr %struct.tda_state, ptr %state, i32 0, i32 12, i32 5
  %106 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx184, align 1
  %108 = and i8 %107, -65
  store i8 %108, ptr %arrayidx184, align 1
  %109 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx4, align 1
  %111 = and i8 %110, -4
  store i8 %111, ptr %arrayidx4, align 1
  %call193 = call fastcc i32 @UpdateReg(ptr noundef %state, i8 noundef zeroext 33)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call193)
  %cmp194 = icmp slt i32 %call193, 0
  br i1 %cmp194, label %if.end177.cleanup218_crit_edge, label %if.end197

if.end177.cleanup218_crit_edge:                   ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup218

if.end197:                                        ; preds = %if.end177
  %call198 = call fastcc i32 @UpdateRegs(ptr noundef %state, i8 noundef zeroext 5, i8 noundef zeroext 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call198)
  %cmp199 = icmp slt i32 %call198, 0
  br i1 %cmp199, label %if.end197.cleanup218_crit_edge, label %if.end202

if.end197.cleanup218_crit_edge:                   ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup218

if.end202:                                        ; preds = %if.end197
  %call203 = call fastcc i32 @UpdateReg(ptr noundef %state, i8 noundef zeroext 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call203)
  %cmp204 = icmp slt i32 %call203, 0
  br i1 %cmp204, label %if.end202.cleanup218_crit_edge, label %if.end207

if.end202.cleanup218_crit_edge:                   ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup218

if.end207:                                        ; preds = %if.end202
  %call208 = call fastcc i32 @ReadExtented(ptr noundef %state, ptr noundef nonnull %Regs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call208)
  %cmp209 = icmp slt i32 %call208, 0
  br i1 %cmp209, label %if.end207.cleanup218_crit_edge, label %if.end212

if.end207.cleanup218_crit_edge:                   ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup218

if.end212:                                        ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx213 = getelementptr inbounds [39 x i8], ptr %Regs, i32 0, i32 29
  %112 = ptrtoint ptr %arrayidx213 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx213, align 1
  %conv214 = zext i8 %113 to i32
  %114 = ptrtoint ptr %pCprog to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %conv214, ptr %pCprog, align 4
  br label %cleanup218

cleanup218:                                       ; preds = %if.end212, %if.end207.cleanup218_crit_edge, %if.end202.cleanup218_crit_edge, %if.end197.cleanup218_crit_edge, %if.end177.cleanup218_crit_edge, %if.end167.cleanup218_crit_edge, %if.end157.cleanup218_crit_edge, %if.end147.cleanup218_crit_edge, %if.end142.cleanup218_crit_edge, %if.end137.cleanup218_crit_edge, %if.end132.cleanup218_crit_edge, %if.end127.cleanup218_crit_edge, %if.end122.cleanup218_crit_edge, %if.end117.cleanup218_crit_edge, %if.end107.cleanup218_crit_edge, %if.end97.cleanup218_crit_edge, %if.end90.cleanup218_crit_edge, %if.end80.cleanup218_crit_edge, %if.end70.cleanup218_crit_edge, %UpdateReg.exit350.thread, %UpdateRegs.exit.thread, %while.end.i323.cleanup218_crit_edge, %while.end.i311.cleanup218_crit_edge, %while.end.i.cleanup218_crit_edge, %UpdateReg.exit301.thread, %UpdateReg.exit.thread
  %retval.1 = phi i32 [ -22, %while.end.i323.cleanup218_crit_edge ], [ -22, %while.end.i311.cleanup218_crit_edge ], [ -22, %while.end.i.cleanup218_crit_edge ], [ -1, %UpdateReg.exit350.thread ], [ -1, %UpdateRegs.exit.thread ], [ -1, %UpdateReg.exit301.thread ], [ -1, %UpdateReg.exit.thread ], [ -1, %if.end207.cleanup218_crit_edge ], [ -1, %if.end202.cleanup218_crit_edge ], [ %call198, %if.end197.cleanup218_crit_edge ], [ -1, %if.end177.cleanup218_crit_edge ], [ -1, %if.end167.cleanup218_crit_edge ], [ -1, %if.end157.cleanup218_crit_edge ], [ -1, %if.end147.cleanup218_crit_edge ], [ -1, %if.end142.cleanup218_crit_edge ], [ -1, %if.end137.cleanup218_crit_edge ], [ -1, %if.end132.cleanup218_crit_edge ], [ -1, %if.end127.cleanup218_crit_edge ], [ %call123, %if.end122.cleanup218_crit_edge ], [ %call118, %if.end117.cleanup218_crit_edge ], [ %call113, %if.end107.cleanup218_crit_edge ], [ -1, %if.end97.cleanup218_crit_edge ], [ -1, %if.end90.cleanup218_crit_edge ], [ -1, %if.end80.cleanup218_crit_edge ], [ -1, %if.end70.cleanup218_crit_edge ], [ 0, %if.end212 ]
  call void @llvm.lifetime.end.p0(i64 39, ptr nonnull %Regs) #8
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ReadExtented(ptr nocapture noundef readonly %state, ptr noundef %Regs) unnamed_addr #0 align 64 {
entry:
  %msgs.i = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %adr = getelementptr inbounds %struct.tda_state, ptr %state, i32 0, i32 1
  %2 = ptrtoint ptr %adr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %adr, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i) #8
  %4 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2621439, ptr %4, align 4
  %conv.i = zext i8 %3 to i16
  %6 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv.i, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 1, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %8 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %Regs, ptr %buf.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %1, ptr noundef nonnull %msgs.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp ne i32 %call.i, 1
  %cond.i = sext i1 %cmp.i to i32
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i) #8
  ret i32 %cond.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !14, !15, !16, !17, !19, !20, !21, !22, !23, !25, !27, !29, !31, !33, !35, !36, !37, !38, !40, !42, !44, !46, !48, !50, !52, !54, !55, !56, !57, !59}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @__ksymtab_tda18271c2dd_attach, !1, !"__ksymtab_tda18271c2dd_attach", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/tda18271c2dd.c", i32 1231, i32 1}
!2 = !{ptr @__UNIQUE_ID_description290, !3, !"__UNIQUE_ID_description290", i1 false, i1 false}
!3 = !{!"../drivers/media/dvb-frontends/tda18271c2dd.c", i32 1233, i32 1}
!4 = !{ptr @__UNIQUE_ID_author291, !5, !"__UNIQUE_ID_author291", i1 false, i1 false}
!5 = !{!"../drivers/media/dvb-frontends/tda18271c2dd.c", i32 1234, i32 1}
!6 = !{ptr @__UNIQUE_ID_file292, !7, !"__UNIQUE_ID_file292", i1 false, i1 false}
!7 = !{!"../drivers/media/dvb-frontends/tda18271c2dd.c", i32 1235, i32 1}
!8 = !{ptr @__UNIQUE_ID_license293, !7, !"__UNIQUE_ID_license293", i1 false, i1 false}
!9 = !{ptr @tuner_ops, !10, !"tuner_ops", i1 false, i1 false}
!10 = !{!"../drivers/media/dvb-frontends/tda18271c2dd.c", i32 1198, i32 35}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/dvb-frontends/tda18271c2dd.c", i32 118, i32 3}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @i2c_write._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @i2c_write._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/dvb-frontends/tda18271c2dd.c", i32 130, i32 3}
!19 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @WriteRegs._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @WriteRegs._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @m_RF_Cal_Map, !24, !"m_RF_Cal_Map", i1 false, i1 false}
!24 = !{!"../drivers/media/dvb-frontends/tda18271c2dd_maps.h", i32 42, i32 27}
!25 = !{ptr @m_RF_Band_Map, !26, !"m_RF_Band_Map", i1 false, i1 false}
!26 = !{!"../drivers/media/dvb-frontends/tda18271c2dd_maps.h", i32 793, i32 33}
!27 = !{ptr @m_RF_Cal_DC_Over_DT_Map, !28, !"m_RF_Cal_DC_Over_DT_Map", i1 false, i1 false}
!28 = !{!"../drivers/media/dvb-frontends/tda18271c2dd_maps.h", i32 664, i32 26}
!29 = !{ptr @m_Thermometer_Map_2, !30, !"m_Thermometer_Map_2", i1 false, i1 false}
!30 = !{!"../drivers/media/dvb-frontends/tda18271c2dd_maps.h", i32 810, i32 11}
!31 = !{ptr @m_Thermometer_Map_1, !32, !"m_Thermometer_Map_1", i1 false, i1 false}
!32 = !{!"../drivers/media/dvb-frontends/tda18271c2dd_maps.h", i32 803, i32 11}
!33 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/dvb-frontends/tda18271c2dd.c", i32 990, i32 3}
!35 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @ChannelConfiguration._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @ChannelConfiguration._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @m_StandardTable, !39, !"m_StandardTable", i1 false, i1 false}
!39 = !{!"../drivers/media/dvb-frontends/tda18271c2dd_maps.h", i32 9, i32 36}
!40 = !{ptr @m_BP_Filter_Map, !41, !"m_BP_Filter_Map", i1 false, i1 false}
!41 = !{!"../drivers/media/dvb-frontends/tda18271c2dd_maps.h", i32 31, i32 27}
!42 = !{ptr @m_GainTaper_Map, !43, !"m_GainTaper_Map", i1 false, i1 false}
!43 = !{!"../drivers/media/dvb-frontends/tda18271c2dd_maps.h", i32 575, i32 27}
!44 = !{ptr @m_IR_Meas_Map, !45, !"m_IR_Meas_Map", i1 false, i1 false}
!45 = !{!"../drivers/media/dvb-frontends/tda18271c2dd_maps.h", i32 770, i32 27}
!46 = !{ptr @m_Main_PLL_Map, !47, !"m_Main_PLL_Map", i1 false, i1 false}
!47 = !{!"../drivers/media/dvb-frontends/tda18271c2dd_maps.h", i32 493, i32 27}
!48 = !{ptr @m_Cal_PLL_Map, !49, !"m_Cal_PLL_Map", i1 false, i1 false}
!49 = !{!"../drivers/media/dvb-frontends/tda18271c2dd_maps.h", i32 537, i32 27}
!50 = !{ptr @FixedContentsI2CUpdate.InitRegs, !51, !"InitRegs", i1 false, i1 false}
!51 = !{!"../drivers/media/dvb-frontends/tda18271c2dd.c", i32 733, i32 12}
!52 = !{ptr @.str.8, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/dvb-frontends/tda18271c2dd.c", i32 602, i32 4}
!54 = !{ptr @.str.9, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @PowerScan._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @PowerScan._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @m_CID_Target_Map, !58, !"m_CID_Target_Map", i1 false, i1 false}
!58 = !{!"../drivers/media/dvb-frontends/tda18271c2dd_maps.h", i32 777, i32 27}
!59 = !{ptr @m_KM_Map, !60, !"m_KM_Map", i1 false, i1 false}
!60 = !{!"../drivers/media/dvb-frontends/tda18271c2dd_maps.h", i32 484, i32 28}
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
!71 = !{i8 0, i8 2}
!72 = !{i64 1141648, i64 1141675}
!73 = !{i64 1142343, i64 1142370, i64 1142403, i64 1142424, i64 1142451, i64 1142477}
